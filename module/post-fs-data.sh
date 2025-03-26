custom_rom_files_hide() {

    if [ -d "/system/addon.d" ]; then
        if [ ! -e "${MODDIR}/system/addon.d" ]; then
        logowl "Detect addon.d exists"
        mkdir -p "${MODDIR}/system/" 
        mknod "${MODDIR}/system/addon.d" c 0 0
            if [ "$?" = 0 ]; then
                logowl "Done (code: $?)"
            else
                logowl "Failed (code: $?)"
            fi
        fi
    fi

    if [ -f "/system/vendor/bin/install-recovery.sh" ]; then
        if [ ! -e "${MODDIR}/system/vendor/bin/install-recovery.sh" ]; then
            mkdir -p "${MODDIR}/system/vendor/bin/"
            mknod "${MODDIR}/system/vendor/bin/install-recovery.sh" c 0 0
            if [ "$?" = 0 ]; then
                logowl "Done (code: $?)"
            else
                logowl "Failed (code: $?)"
            fi
        fi
    fi

}
