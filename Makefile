
BUILD=make
CLEAN=make clean
BUILD_DIR=make build_dir
#THIRDP_LIB_PATH=/usr/local/mylibs/

INSTALLATION_PATH = $(shell echo $$INSTALLATION_PATH)
ifeq ($(INSTALLATION_PATH),)
        INSTALLATION_PATH = $(shell echo $$PWD)
		export INSTALLATION_PATH
#       INSTALLATION_PATH = /usr/local/mycustombuild
endif

SOURCE_DIR := ./src

define makeallmodules
	for dir in $(SOURCE_DIR)/*; \
		do \
		make -C $$dir $(1); \
		done
endef

# all:
# 	@echo "###### BUILDING  ########"
# 	+(cd src/employee; $(BUILD))
# 	+(cd src/employee; $(BUILD) install)
# 	+(cd src/db_mgr; $(BUILD))
# 	+(cd src/ui_controller; $(BUILD))

all:
	@echo "###### BUILDING  ########"
	$(call makeallmodules,all)

3rd-party-libs:
#	(cd src/3rd_party/libzmq; $(BUILD) install)

# build_dir:
# 	@echo "#######BUILDING DIRECTORIES FOR OUTPUT BINARIES#######"
# 	(cd src/employee; $(BUILD_DIR))
# 	(cd src/db_mgr; $(BUILD_DIR))
# 	(cd src/ui_controller; $(BUILD_DIR))

build_dir:
	@echo "#######BUILDING DIRECTORIES FOR OUTPUT BINARIES#######"
	$(call makeallmodules,build_dir)

# clean:
# 	@echo "#######BUILDING DIRECTORIES FOR OUTPUT BINARIES#######"
# 	-(cd src/employee; $(CLEAN))
# 	-(cd src/db_mgr; $(CLEAN))
# 	-(cd src/ui_controller; $(CLEAN))

clean:
	@echo "#######BUILDING DIRECTORIES FOR OUTPUT BINARIES#######"
	-$(call makeallmodules,clean)

# install:
# 	(cd src/employee; $(BUILD) install)
# 	(cd src/db_mgr; $(BUILD) install)
# 	(cd src/ui_controller; $(BUILD) install)

install:
	$(call makeallmodules,install)

.PHONY: all 3rd-party-libs build_dir clean install
