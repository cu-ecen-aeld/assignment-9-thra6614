#! /bin/sh

case "$1" in
    start)
        echo "Starting Modules"
        /usr/bin/module_load faulty
        /usr/bin/scull_load
        modprobe hello
        /usr/bin/aesdchar_load
        ;;
    stop)
        echo "Stopping Modules"
        /usr/bin/module_unload
        /usr/bin/scull_unload
        rmmod hello
        /usr/bin/aesdchar_unload        
        ;;
    *)
        echo "Usage: $0 [start|stop]"
    exit 1
esac
exit 0
