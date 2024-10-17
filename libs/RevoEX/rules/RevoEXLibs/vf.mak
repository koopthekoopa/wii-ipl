VFF_OBJECTS =	$(REVOEX_OBJASM_PATH)/vf/pf_clib.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_code.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_service.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_str.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_w_clib.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_driver.o \
				$(REVOEX_OBJASM_PATH)/vf/pdm_bpb.o \
				$(REVOEX_OBJASM_PATH)/vf/pdm_disk.o \
				$(REVOEX_OBJASM_PATH)/vf/pdm_partition.o \
				$(REVOEX_OBJASM_PATH)/vf/pdm_mbr.o \
				$(REVOEX_OBJASM_PATH)/vf/pdm_dskmng.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_cache.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_cluster.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_dir.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_entry.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_entry_iterator.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fat.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fat12.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fat16.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fatfs.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_file.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_path.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_sector.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_volume.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_cp932.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_attach.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_chdir.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_create.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_detach.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_errnum.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fclose.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_finfo.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fopen.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_format.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fread.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fseek.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fsfirst.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fsnext.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_fwrite.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_getdev.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_init_prfile2.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_mkdir.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_remove.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_rmdir.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_sync.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_unmount.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_filelock.o \
				$(REVOEX_OBJASM_PATH)/vf/pf_system.o \
				$(REVOEX_OBJASM_PATH)/vf/d_vf.o \
				$(REVOEX_OBJASM_PATH)/vf/d_vf_sys.o \
				$(REVOEX_OBJASM_PATH)/vf/d_hash.o \
				$(REVOEX_OBJASM_PATH)/vf/d_time.o \
				$(REVOEX_OBJASM_PATH)/vf/d_common.o \
				$(REVOEX_OBJASM_PATH)/vf/nand_drv.o \
				$(REVOEX_OBJASM_PATH)/vf/sd_drv.o

ALL_OBJECTS += $(VFF_OBJECTS)

$(REVOEX_OBJ_PATH)/vf/%.o: $(REVOEX_SRC_PATH)/vf/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJASM_PATH)/vf/%.o: $(REVOEX_ASM_PATH)/vf/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/vf.a: $(VFF_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


