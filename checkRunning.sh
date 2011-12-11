#!/bin/sh
# Author: Morten Klim Sørensen
# Created: 2011 Oct 12
# Filename: checkRunning.sh
# Description: Check if SERVICE or SERVICE 2 are running and fire some commands if one of them are.
#              It was made for using the same mediakeys for spotify and banshee.

SERVICE='spotify'
SERVICE2='Banshee.exe'

function quit_message
{
	echo "Usage: `basename $0` {play|pause|playpause|next|previous|stop}"
	exit 1
}


if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    
case "$1" in
        play)
		sh ~/Scripts/spotify-remote.sh play
                ;;
        pause)
	    sh ~/Scripts/spotify-remote.sh pause
	            ;;
        playpause)
		sh ~/Scripts/spotify-remote.sh playpause
                ;;
        next)
	    sh ~/Scripts/spotify-remote.sh next
                ;;
        previous)
        sh ~/Scripts/spotify-remote.sh previous
                ;;
        stop)
        sh ~/Scripts/spotify-remote.sh stop
                ;;
        *)
                echo -e "Bad argument.\n"
                quit_message
                ;;
esac

else
    echo "$SERVICE is not running"

    if ps ax | grep -v grep | grep $SERVICE2 > /dev/null
    then
        case "$1" in
            play)
		    banshee --play
                ;;
            pause)
	        banshee --pause
	            ;;
            playpause)
            banshee --toggle-playing     
                ;;
            next)
            banshee --next         
                ;;
            previous)
            banshee --restart-or-previous         
                ;;
            stop)
            banshee --stop     
                ;;
            *)
                echo -e "Bad argument.\n"
                quit_message
                ;;
    esac

    else
        echo "$SERVICE2 is not running"
    fi
fi
