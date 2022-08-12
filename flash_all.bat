echo "nothing phone(1) fastboot flash by @sh4tteredd"
echo ""
echo "In order to gather all the files that we need, consider to run my other script available on https://github.com/sh4tteredd/nothing-phone-1-tools"
echo ""
echo "If you already have the .img files, put all your files in a subfolder called 'images' to continue"
echo ""

fastboot %* getvar product 2>&1 | findstr /r /c:"^product: *lahaina" || echo This script is only for nothing phone(1)
fastboot %* getvar product 2>&1 | findstr /r /c:"^product: *lahaina" || exit \B 1

fastboot flash abl .\images\abl.img

fastboot flash aop .\images\aop.img

fastboot flash bluetooth .\images\bluetooth.img

fastboot flash boot .\images\boot.img

fastboot flash cpucp .\images\cpucp.img

fastboot flash devcfg .\images\devcfg.img

fastboot flash dsp .\images\dsp.img

fastboot flash dtbo .\images\dtbo.img

fastboot flash featenabler .\images\featenabler.img

fastboot flash hyp .\images\hyp.img

fastboot flash imagefv .\images\imagefv.img

fastboot flash keymaster .\images\keymaster.img

fastboot flash modem .\images\modem.img

fastboot flash multiimgoem .\images\multiimgoem.img

fastboot flash odm .\images\odm.img

fastboot --force flash product .\images\product.img

fastboot flash qupfw .\images\qupfw.img

fastboot flash shrm .\images\shrm.img

fastboot --force flash system .\images\system.img

fastboot --force flash system_ext .\images\system_ext.img

fastboot flash tz .\images\tz.img

fastboot flash uefisecapp .\images\uefisecapp.img

fastboot flash vbmeta .\images\vbmeta.img

fastboot flash vbmeta_system .\images\vbmeta_system.img

fastboot --force flash vendor .\images\vendor.img

fastboot flash vendor_boot .\images\vendor_boot.img

fastboot flash xbl .\images\xbl.img

fastboot flash xbl_config .\images\xbl_config.img

fastboot %* reboot || @echo "Reboot error" && exit /B 1
