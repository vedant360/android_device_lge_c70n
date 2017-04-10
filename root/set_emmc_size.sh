emmc_size=`cat /sys/block/mmcblk0/size`

case "$emmc_size" in
        "61071360")
    setprop persist.sys.emmc_size 32G
    echo 32G model
    ;;
esac

case "$emmc_size" in
        "30777344")
    setprop persist.sys.emmc_size 16G
    echo 16G model
    ;;
esac

case "$emmc_size" in
        "30785536")
    setprop persist.sys.emmc_size 16G
    echo 16G model
    ;;
esac

case "$emmc_size" in
        "15269888")
    setprop persist.sys.emmc_size 8G
    echo 8G model
    ;;
esac

case "$emmc_size" in
        "7634944")
    setprop persist.sys.emmc_size 4G
    echo 4G model
    ;;
esac
