VFF_OBJECTS =	$(REVOEX_SPLIT_PATH)/vf/pf_clib.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_code.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_service.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_str.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_w_clib.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_driver.o \
				$(REVOEX_SPLIT_PATH)/vf/pdm_bpb.o \
				$(REVOEX_SPLIT_PATH)/vf/pdm_disk.o \
				$(REVOEX_SPLIT_PATH)/vf/pdm_partition.o \
				$(REVOEX_SPLIT_PATH)/vf/pdm_mbr.o \
				$(REVOEX_SPLIT_PATH)/vf/pdm_dskmng.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_cache.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_cluster.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_dir.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_entry.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_entry_iterator.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fat.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fat12.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fat16.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fatfs.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_file.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_path.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_sector.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_volume.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_cp932.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_attach.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_chdir.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_create.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_detach.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_errnum.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fclose.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_finfo.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fopen.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_format.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fread.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fseek.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fsfirst.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fsnext.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_fwrite.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_getdev.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_init_prfile2.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_mkdir.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_remove.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_rmdir.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_sync.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_unmount.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_filelock.o \
				$(REVOEX_SPLIT_PATH)/vf/pf_system.o \
				$(REVOEX_SPLIT_PATH)/vf/d_vf.o \
				$(REVOEX_SPLIT_PATH)/vf/d_vf_sys.o \
				$(REVOEX_SPLIT_PATH)/vf/d_hash.o \
				$(REVOEX_SPLIT_PATH)/vf/d_time.o \
				$(REVOEX_SPLIT_PATH)/vf/d_common.o \
				$(REVOEX_SPLIT_PATH)/vf/nand_drv.o \
				$(REVOEX_SPLIT_PATH)/vf/sd_drv.o

ALL_OBJECTS += $(VFF_OBJECTS)

$(REVOEX_OBJ_PATH)/vf/%.o: $(REVOEX_SRC_PATH)/vf/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/vf.a: $(VFF_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


