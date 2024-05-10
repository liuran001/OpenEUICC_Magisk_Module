if $BOOTMODE; then
    ui_print "- Installing from Magisk/KernelSU app"
  else
    ui_print "*********************************************************"
    ui_print "! Install from recovery is NOT supported"
    ui_print "! Please install from Magisk/KernelSU app"
    abort "*********************************************************"
  fi

pm install "$MODPATH/system/system_ext/priv-app/OpenEUICC/OpenEUICC.apk"
appops set im.angry.openeuicc android:read_device_identifiers allow
ui_print '- Please reboot before open OpenEUICC App!'