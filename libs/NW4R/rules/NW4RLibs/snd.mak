NW_SND_OBJECTS =	$(NW4R_SPLIT_PATH)/snd/snd_AxManager.o \
					$(NW4R_SPLIT_PATH)/snd/snd_AxVoice.o \
					$(NW4R_SPLIT_PATH)/snd/snd_AxfxImpl.o \
					$(NW4R_SPLIT_PATH)/snd/snd_Bank.o \
					$(NW4R_SPLIT_PATH)/snd/snd_BankFile.o \
					$(NW4R_SPLIT_PATH)/snd/snd_BasicSound.o \
					$(NW4R_SPLIT_PATH)/snd/snd_Channel.o \
					$(NW4R_SPLIT_PATH)/snd/snd_DisposeCallbackManager.o \
					$(NW4R_SPLIT_PATH)/snd/snd_DvdSoundArchive.o \
					$(NW4R_SPLIT_PATH)/snd/snd_EnvGenerator.o \
					$(NW4R_SPLIT_PATH)/snd/snd_ExternalSoundPlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_FrameHeap.o \
					$(NW4R_SPLIT_PATH)/snd/snd_FxChorus.o \
					$(NW4R_SPLIT_PATH)/snd/snd_FxDelay.o \
					$(NW4R_SPLIT_PATH)/snd/snd_FxReverbHi.o \
					$(NW4R_SPLIT_PATH)/snd/snd_FxReverbHiDpl2.o \
					$(NW4R_SPLIT_PATH)/snd/snd_FxReverbStd.o \
					$(NW4R_SPLIT_PATH)/snd/snd_InstancePool.o \
					$(NW4R_SPLIT_PATH)/snd/snd_Lfo.o \
					$(NW4R_SPLIT_PATH)/snd/snd_McsSoundArchive.o \
					$(NW4R_SPLIT_PATH)/snd/snd_MemorySoundArchive.o \
					$(NW4R_SPLIT_PATH)/snd/snd_MidiSeqPlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_MidiSeqTrack.o \
					$(NW4R_SPLIT_PATH)/snd/snd_MmlParser.o \
					$(NW4R_SPLIT_PATH)/snd/snd_MmlSeqTrack.o \
					$(NW4R_SPLIT_PATH)/snd/snd_MmlSeqTrackAllocator.o \
					$(NW4R_SPLIT_PATH)/snd/snd_NandSoundArchive.o \
					$(NW4R_SPLIT_PATH)/snd/snd_RemoteSpeaker.o \
					$(NW4R_SPLIT_PATH)/snd/snd_RemoteSpeakerManager.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SeqFile.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SeqPlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SeqSound.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SeqSoundHandle.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SeqTrack.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundArchive.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundArchiveLoader.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundArchivePlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundHandle.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundHeap.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundPlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundStartable.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundSystem.o \
					$(NW4R_SPLIT_PATH)/snd/snd_SoundThread.o \
					$(NW4R_SPLIT_PATH)/snd/snd_StrmChannel.o \
					$(NW4R_SPLIT_PATH)/snd/snd_StrmFile.o \
					$(NW4R_SPLIT_PATH)/snd/snd_StrmPlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_StrmSound.o \
					$(NW4R_SPLIT_PATH)/snd/snd_StrmSoundHandle.o \
					$(NW4R_SPLIT_PATH)/snd/snd_TaskManager.o \
					$(NW4R_SPLIT_PATH)/snd/snd_TaskThread.o \
					$(NW4R_SPLIT_PATH)/snd/snd_Util.o \
					$(NW4R_SPLIT_PATH)/snd/snd_WaveFile.o \
					$(NW4R_SPLIT_PATH)/snd/snd_WavePlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_WaveSound.o \
					$(NW4R_SPLIT_PATH)/snd/snd_WaveSoundHandle.o \
					$(NW4R_SPLIT_PATH)/snd/snd_WsdFile.o \
					$(NW4R_SPLIT_PATH)/snd/snd_WsdPlayer.o \
					$(NW4R_SPLIT_PATH)/snd/snd_WsdTrack.o

ALL_OBJECTS += $(NW_SND_OBJECTS)

$(NW4R_OBJ_PATH)/snd/%.o: $(NW4R_SRC_PATH)/snd/%.cpp
	$(call BuildCPPSources,$(NW4R_CCPATH),$(NW4R_CFLAGS),$(NW4R_INC_PATHS),$(INCLUDE_ROOT))

$(NW4R_BLD_PATH)/libnw4r_snd.a: $(NW_SND_OBJECTS)
	$(call LinkLibrary,$(NW4R_CCPATH),$^,$@)


