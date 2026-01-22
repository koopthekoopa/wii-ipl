#include <nw4r/snd/MmlParser.h>
#include <nw4r/snd/MmlSeqTrack.h>

#include <nw4r/snd/SeqPlayer.h>
#include <nw4r/snd/SeqTrack.h>
#include <nw4r/snd/Util.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            bool MmlParser::mPrintVarEnabledFlag = false;

            ParseResult MmlParser::Parse(MmlSeqTrack* track, bool doNoteOn) const {
                SeqPlayer* seqPlayer = track->GetSeqPlayer();

                SeqTrack::ParserTrackParam& rTrackParam = track->GetParserTrackParam();
                MmlSeqTrack::MmlParserParam& rMmlParam = track->GetMmlParserParam();

                SeqPlayer::ParserPlayerParam& rPlayerParam = seqPlayer->GetParserPlayerParam();

                SeqArgType argType;
                bool useArgType = false;
                bool doExecCommand = true;

                u32 cmd = ReadByte(&rTrackParam.currentAddr);

                if (cmd == MML_EXECIF) {
                    cmd = ReadByte(&rTrackParam.currentAddr);
                    doExecCommand = rMmlParam.cmpFlag != false;
                }

                if (cmd == MML_RNDPARAM) {
                    cmd = ReadByte(&rTrackParam.currentAddr);
                    argType = SEQ_ARG_RANDOM;
                    useArgType = true;
                }

                if (cmd == MML_INDPARAM) {
                    cmd = ReadByte(&rTrackParam.currentAddr);
                    argType = SEQ_ARG_VARIABLE;
                    useArgType = true;
                }

                // MML note data, not a command
                if (!(cmd & MML_CMD_MASK)) {
                    u8 velocity = ReadByte(&rTrackParam.currentAddr);

                    s32 length = ReadArg(&rTrackParam.currentAddr, seqPlayer, track, useArgType ? argType : SEQ_ARG_VMIDI);

                    int key = cmd + rTrackParam.transpose;

                    if (!doExecCommand) {
                        return PARSE_RESULT_CONTINUE;
                    }

                    key = ut::Clamp(key, 0, 127);

                    if (!rTrackParam.muteFlag && doNoteOn) {
                        NoteOnCommandProc(track, key, velocity, length > 0 ? length : -1, rMmlParam.tieFlag);
                    }

                    if (rMmlParam.noteWaitFlag) {
                        rTrackParam.wait = length;

                        if (length == 0) {
                            rTrackParam.noteFinishWait = true;
                        }
                    }
                }
                // MML command
                else {
                    s32 arg1 = 0;
                    s32 arg2 = 0;

                    switch (cmd & MML_CMD_SET_MASK) {
                        case 0x80: {
                            switch (cmd) {
                                case MML_WAIT: {
                                    s32 time = ReadArg(&rTrackParam.currentAddr, seqPlayer, track, useArgType ? argType : SEQ_ARG_VMIDI);

                                    if (doExecCommand) {
                                        rTrackParam.wait = time;
                                    }
                                    break;
                                }

                                case MML_SET_PRGNO: {
                                    arg1 = ReadArg(&rTrackParam.currentAddr, seqPlayer, track,
                                                useArgType ? argType : SEQ_ARG_VMIDI);

                                    if (doExecCommand) {
                                        CommandProc(track, cmd, arg1, arg2);
                                    }
                                    break;
                                }

                                case MML_OPENTRACK: {
                                    u8 trackNo = ReadByte(&rTrackParam.currentAddr);
                                    u32 offset = Read24(&rTrackParam.currentAddr);

                                    if (doExecCommand) {
                                        arg1 = trackNo;
                                        arg2 = offset;
                                        CommandProc(track, cmd, arg1, arg2);
                                    }
                                    break;
                                }

                                case MML_JUMP: {
                                    u32 offset = Read24(&rTrackParam.currentAddr);

                                    if (doExecCommand) {
                                        arg1 = offset;
                                        CommandProc(track, cmd, arg1, arg2);
                                    }
                                    break;
                                }

                                case MML_CALL: {
                                    u32 offset = Read24(&rTrackParam.currentAddr);

                                    if (doExecCommand) {
                                        arg1 = offset;
                                        CommandProc(track, cmd, arg1, arg2);
                                    }
                                    break;
                                }
                            }
                            break;
                        }
                        case 0xC0:
                        case 0xD0: {
                            u8 arg = ReadArg(&rTrackParam.currentAddr, seqPlayer, track, useArgType ? argType : SEQ_ARG_U8);

                            if (!doExecCommand) {
                                break;
                            }

                            switch (cmd) {
                                case MML_SET_TRANSPOSE:
                                case MML_SET_PITCHBEND: {
                                    arg1 = *reinterpret_cast<s8*>(&arg);
                                    break;
                                }
                                default: {
                                    arg1 = arg;
                                    break;
                                }
                            }

                            CommandProc(track, cmd, arg1, arg2);
                            break;
                        }

                        case 0xB0:
                        case 0x90: {
                            if (doExecCommand) {
                                CommandProc(track, cmd, arg1, arg2);
                            }
                            break;
                        }

                        case 0xE0: {
                            arg1 = static_cast<s16>(ReadArg(&rTrackParam.currentAddr, seqPlayer, track, useArgType ? argType : SEQ_ARG_S16));

                            if (doExecCommand) {
                                CommandProc(track, cmd, arg1, arg2);
                            }
                            break;
                        }

                        case 0xF0: {
                            switch (cmd) {
                                case MML_ALLOCTRACK: {
                                    // Skip command argument ("must use alloctrack in startup code")
                                    // Read16(&rTrackParam.currentAddr);
                                    break;
                                }

                                case MML_EOF: {
                                    return PARSE_RESULT_FINISH;
                                }

                                case MML_EX_COMMAND: {
                                    u32 cmdex = ReadByte(&rTrackParam.currentAddr);

                                    switch (cmdex & MML_CMD_SET_MASK) {
                                        case MML_EX_USERPROC: {
                                            arg1 = static_cast<s16>(ReadArg(&rTrackParam.currentAddr, seqPlayer, track, useArgType ? argType : SEQ_ARG_S16));

                                            if (doExecCommand) {
                                                CommandProc(track, (cmd << 8) + cmdex, arg1, arg2);
                                            }
                                            break;
                                        }

                                        case MML_EX_ARITHMETIC:
                                        case MML_EX_LOGIC: {
                                            arg1 = ReadByte(&rTrackParam.currentAddr);
                                            arg2 = static_cast<s16>(ReadArg(&rTrackParam.currentAddr, seqPlayer, track, useArgType ? argType : SEQ_ARG_S16));

                                            if (doExecCommand) {
                                                CommandProc(track, (cmd << 8) + cmdex, arg1, arg2);
                                            }
                                            break;
                                        }
                                    }

                                    // FALLTHROUGH (assume no arguments?)
                                }

                                default: {
                                    if (doExecCommand) {
                                        CommandProc(track, cmd, arg1, arg2);
                                    }
                                    break;
                                }
                            }

                            break;
                        }
                    }
                }

                return PARSE_RESULT_CONTINUE;
            }

            void MmlParser::CommandProc(MmlSeqTrack* track, u32 command, s32 arg1, s32 arg2) const {
                SeqPlayer* seqPlayer = track->GetSeqPlayer();

                SeqTrack::ParserTrackParam& rTrackParam = track->GetParserTrackParam();
                MmlSeqTrack::MmlParserParam& rMmlParam = track->GetMmlParserParam();

                SeqPlayer::ParserPlayerParam& rPlayerParam =
                    seqPlayer->GetParserPlayerParam();

                if (command <= MML_CMD_MAX) {
                    switch (command) {
                    case MML_SET_TEMPO: {
                        rPlayerParam.tempo = arg1;
                        break;
                    }
                    case MML_SET_PRGNO: {
                        if (arg1 < SeqTrack::PRGNO_MAX + 1) {
                            rTrackParam.prgNo = arg1 & SeqTrack::PRGNO_MAX;
                        }
                        break;
                    }

                    case MML_SET_MUTE: {
                        track->SetMute(static_cast<SeqMute>(arg1));
                        break;
                    }

                    case MML_SET_TRACK_VOLUME: {
                        rTrackParam.volume = arg1;
                        break;
                    }
                    case MML_SET_TRACK_VOLUME2: {
                        rTrackParam.volume2 = arg1;
                        break;
                    }
                    case MML_SET_PLAYER_VOLUME: {
                        rPlayerParam.volume = arg1;
                        break;
                    }

                    case MML_SET_TRANSPOSE: {
                        rTrackParam.transpose = arg1;
                        break;
                    }

                    case MML_SET_PITCHBEND: {
                        rTrackParam.pitchBend = arg1;
                        break;
                    }
                    case MML_SET_BENDRANGE: {
                        rTrackParam.bendRange = arg1;
                        break;
                    }
                    case MML_SET_PAN: {
                        if (arg1 <= 1) {
                            arg1++;
                        }
                        rTrackParam.pan = arg1 - 64;
                        break;
                    }
                    case MML_SET_INITPAN: {
                        if (arg1 <= 1) {
                            arg1++;
                        }
                        rTrackParam.initPan = arg1 - 64;
                        break;
                    }
                    case MML_SET_SURROUNDPAN: {
                        if (arg1 <= 1) {
                            arg1++;
                        }
                        rTrackParam.surroundPan = arg1;
                        break;
                    }
                    case MML_SET_PRIORITY: {
                        rTrackParam.priority = arg1;
                        break;
                    }

                    case MML_SET_NOTEWAIT: {
                        rMmlParam.noteWaitFlag = arg1;
                        break;
                    }

                    case MML_SET_PORTATIME: {
                        rTrackParam.portaTime = arg1;
                        break;
                    }

                    case MML_SET_LFODEPTH: {
                        rTrackParam.lfoParam.depth = static_cast<u8>(arg1) / 128.0f;
                        break;
                    }
                    case MML_SET_LFOSPEED: {
                        rTrackParam.lfoParam.speed =
                            static_cast<u8>(arg1) * (100.0f / 256.0f);
                        break;
                    }
                    case MML_SET_LFOTARGET: {
                        rTrackParam.lfoTarget = arg1;
                        break;
                    }
                    case MML_SET_LFORANGE: {
                        rTrackParam.lfoParam.range = arg1;
                        break;
                    }
                    case MML_SET_LFODELAY: {
                        rTrackParam.lfoParam.delay = arg1 * 5;
                        break;
                    }

                    case MML_SET_SWEEPPITCH: {
                        rTrackParam.sweepPitch = arg1 / 32.0f;
                        break;
                    }

                    case MML_SET_ATTACK: {
                        rTrackParam.attack = arg1;
                        break;
                    }
                    case MML_SET_DECAY: {
                        rTrackParam.decay = arg1;
                        break;
                    }
                    case MML_SET_SUSTAIN: {
                        rTrackParam.sustain = arg1;
                        break;
                    }
                    case MML_SET_RELEASE: {
                        rTrackParam.release = arg1;
                        break;
                    }
                    case MML_SET_TIE: {
                        rMmlParam.tieFlag = arg1;
                        track->ReleaseAllChannel(-1);
                        track->FreeAllChannel();
                        break;
                    }

                    case MML_SET_PORTAMENTO: {
                        rTrackParam.portaKey = arg1 + rTrackParam.transpose;
                        rTrackParam.portaFlag = true;
                        break;
                    }
                    case MML_SET_PORTASPEED: {
                        rTrackParam.portaFlag = arg1 != 0;
                        break;
                    }
                    case MML_SET_LPFFREQ: {
                        rTrackParam.lpfFreq = arg1;
                        break;
                    }

                    case MML_SET_FXSEND_A: {
                        rTrackParam.fxSend[AUX_A] = arg1;
                        break;
                    }
                    case MML_SET_FXSEND_B: {
                        rTrackParam.fxSend[AUX_B] = arg1;
                        break;
                    }
                    case MML_SET_FXSEND_C: {
                        rTrackParam.fxSend[AUX_C] = arg1;
                        break;
                    }
                    case MML_SET_MAINSEND: {
                        rTrackParam.mainSend = arg1;
                        break;
                    }

                    case MML_PRINTVAR: {
                        if (!mPrintVarEnabledFlag) {
                            break;
                        }

                        const vs16* pVar = GetVariablePtr(seqPlayer, track, arg1);

                        // clang-format off

                        // Convert absolute index into variable type-relative index
                        int varNo = arg1 >= SeqPlayer::VARIABLE_NUM       ? arg1 - SeqPlayer::VARIABLE_NUM
                                : (arg1 >= SeqPlayer::LOCAL_VARIABLE_NUM ? arg1 - SeqPlayer::LOCAL_VARIABLE_NUM : arg1);

                        // Determine variable type prefix from absolute index
                        // 'T' = Track variable, 'G' = Global (player) variable
                        const char* pVarType = arg1 >= SeqPlayer::VARIABLE_NUM       ? "T"
                                            : (arg1 >= SeqPlayer::LOCAL_VARIABLE_NUM ? "G" : "");

                        // clang-format on

                        OSReport("#%08x[%d]: printvar %sVAR_%d(%d) = %d\n", seqPlayer,
                                track->GetPlayerTrackNo(), pVarType, varNo, arg1, *pVar);
                        break;
                    }

                    case MML_OPENTRACK: {
                        SeqTrack* pNewTrack = seqPlayer->GetPlayerTrack(arg1);

                        if (pNewTrack != NULL && pNewTrack != track) {
                            pNewTrack->Close();
                            pNewTrack->SetSeqData(rTrackParam.baseAddr, arg2);
                        }
                        break;
                    }

                    case MML_JUMP: {
                        rTrackParam.currentAddr = rTrackParam.baseAddr + arg1;
                        break;
                    }

                    case MML_CALL: {
                        if (rMmlParam.callStackDepth >= CALL_STACK_MAX_DEPTH) {
                            break;
                        }

                        rMmlParam.callStack[rMmlParam.callStackDepth] =
                            rTrackParam.currentAddr;

                        rMmlParam.callStackDepth++;
                        rTrackParam.currentAddr = rTrackParam.baseAddr + arg1;
                        break;
                    }

                    case MML_RET: {
                        if (rMmlParam.callStackDepth == 0) {
                            break;
                        }

                        rMmlParam.callStackDepth--;

                        rTrackParam.currentAddr =
                            rMmlParam.callStack[rMmlParam.callStackDepth];
                        break;
                    }

                    case MML_LOOP_START: {
                        if (rMmlParam.callStackDepth >= CALL_STACK_MAX_DEPTH) {
                            break;
                        }

                        rMmlParam.callStack[rMmlParam.callStackDepth] =
                            rTrackParam.currentAddr;

                        rMmlParam.loopCount[rMmlParam.callStackDepth] = arg1;
                        rMmlParam.callStackDepth++;
                        break;
                    }

                    case MML_LOOP_END: {
                        if (rMmlParam.callStackDepth == 0) {
                            break;
                        }

                        u8 count = rMmlParam.loopCount[rMmlParam.callStackDepth - 1];

                        if (count != 0 && --count == 0) {
                            rMmlParam.callStackDepth--;
                        }
                        else {
                            rMmlParam.loopCount[rMmlParam.callStackDepth - 1] = count;

                            rTrackParam.currentAddr =
                                rMmlParam.callStack[rMmlParam.callStackDepth - 1];
                        }
                        break;
                    }
                    }
                }
                else if (command <= MML_EX_CMD_MAX) {
                    u32 cmdex = command & 0xFF;
                    vs16* pVar = NULL;

                    if ((cmdex & 0xF0) == MML_EX_ARITHMETIC ||
                        (cmdex & 0xF0) == MML_EX_LOGIC) {

                        pVar = GetVariablePtr(seqPlayer, track, arg1);
                        if (pVar == NULL) {
                            return;
                        }
                    }

                    switch (cmdex) {
                        case MML_EX_SET: {
                            *pVar = arg2;
                            break;
                        }

                        case MML_EX_APL: {
                            *pVar += arg2;
                            break;
                        }

                        case MML_EX_AMI: {
                            *pVar -= arg2;
                            break;
                        }

                        case MML_EX_AMU: {
                            *pVar *= arg2;
                            break;
                        }

                        case MML_EX_ADV: {
                            if (arg2 != 0) {
                                *pVar /= arg2;
                            }
                            break;
                        }

                        case MML_EX_ALS: {
                            if (arg2 >= 0) {
                                *pVar <<= arg2;

                            }
                            else {
                                *pVar >>= -arg2;
                            }
                            break;
                        }

                        case MML_EX_RND: {
                            bool minus = false;

                            if (arg2 < 0) {
                                minus = true;
                                arg2 = static_cast<s16>(-arg2);
                            }

                            s32 rand = Util::CalcRandom();
                            rand *= arg2 + 1;
                            rand >>= 16;

                            if (minus) {
                                rand = -rand;
                            }

                            *pVar = rand;
                            break;
                        }

                        case MML_EX_AAD: {
                            *pVar &= arg2;
                            break;
                        }

                        case MML_EX_AOR: {
                            *pVar |= arg2;
                            break;
                        }

                        case MML_EX_AER: {
                            *pVar ^= arg2;
                            break;
                        }

                        case MML_EX_ACO: {
                            *pVar = ~static_cast<u16>(arg2);
                            break;
                        }

                        case MML_EX_AMD: {
                            if (arg2 != 0) {
                                *pVar %= arg2;
                            }
                            break;
                        }

                        case MML_EX_EQ: {
                            rMmlParam.cmpFlag = *pVar == arg2;
                            break;
                        }

                        case MML_EX_GE: {
                            rMmlParam.cmpFlag = *pVar >= arg2;
                            break;
                        }

                        case MML_EX_GT: {
                            rMmlParam.cmpFlag = *pVar > arg2;
                            break;
                        }

                        case MML_EX_LE: {
                            rMmlParam.cmpFlag = *pVar <= arg2;
                            break;
                        }

                        case MML_EX_LT: {
                            rMmlParam.cmpFlag = *pVar < arg2;
                            break;
                        }

                        case MML_EX_NE: {
                            rMmlParam.cmpFlag = *pVar != arg2;
                            break;
                        }

                        case MML_EX_USERPROC: {
                            break;
                        }
                    }
                }
            }

            Channel* MmlParser::NoteOnCommandProc(MmlSeqTrack* track, int key,
                                                int velocity, s32 length,
                                                bool tie) const {
                return track->NoteOn(key, velocity, length, tie);
            }

            u16 MmlParser::Read16(const u8** ppData) const {
                u16 val = ReadByte(ppData);

                val <<= 8;
                val |= ReadByte(ppData);

                return val;
            }

            u32 MmlParser::Read24(const u8** ppData) const {
                u32 val = ReadByte(ppData);

                val <<= 8;
                val |= ReadByte(ppData);

                val <<= 8;
                val |= ReadByte(ppData);

                return val;
            }

            s32 MmlParser::ReadVar(const u8** ppData) const {
                u32 val = 0;
                u8 b;

                do {
                    b = ReadByte(ppData);
                    val <<= 7;
                    val |= b & 0x7F;
                } while (b & 0x80);

                return val;
            }

            s32 MmlParser::ReadArg(const u8** ppData, SeqPlayer* seqPlayer, SeqTrack* track,
                                SeqArgType type) const {
                s32 arg;

                switch (type) {
                    case SEQ_ARG_U8: {
                        arg = ReadByte(ppData);
                        break;
                    }
                    case SEQ_ARG_S16: {
                        arg = Read16(ppData);
                        break;
                    }
                    case SEQ_ARG_VMIDI: {
                        arg = ReadVar(ppData);
                        break;
                    }
                    case SEQ_ARG_VARIABLE: {
                        u8 i = ReadByte(ppData);

                        const vs16* pVar = GetVariablePtr(seqPlayer, track, i);
                        if (pVar != NULL) {
                            arg = *pVar;
                        }
                        break;
                    }
                    case SEQ_ARG_RANDOM: {
                        s16 min = Read16(ppData);
                        s16 max = Read16(ppData);

                        s32 rand = Util::CalcRandom();
                        rand *= (max - min) + 1;
                        rand >>= 16;
                        rand += min;

                        arg = rand;
                        break;
                    }
                }

                return arg;
            }

            vs16* MmlParser::GetVariablePtr(SeqPlayer* seqPlayer, SeqTrack* track, int idx) const {
                if (idx < SeqPlayer::VARIABLE_NUM) {
                    return seqPlayer->GetVariablePtr(idx);
                }

                if (idx < SeqPlayer::VARIABLE_NUM + SeqTrack::VARIABLE_NUM) {
                    return track->GetVariablePtr(idx - SeqPlayer::VARIABLE_NUM);
                }

                return NULL;
            }
        }
    }
}
