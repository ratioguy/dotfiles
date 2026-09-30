#!/bin/sh -e

# open file in application based on file extension

	case $1 in
	*.mp3|*.m4a|*.flac|*.wav|*.opus)
		mpv --no-video "$1"
	;;

	*.mp4|*.mkv|*.webm)
		mpv "$1"
	;;

	*.png|*.gif|*.jpg|*.jpe|*.jpeg|*.JPG|*.jxl|*.webp)
		imv-dir "$1"
	;;

	*.xcf)
		gimp "$1"
	;;

	*.html|*.pdf)
		mupdf-x11 "$1"
	;;

	*.zip)
		unzip -l "$1" | less
	;;

	*.7z)
		7z l "$1" | less
	;;

	*.xz)
		xz -l "$1" | less
	;;

	*.rar)
		unrar l "$1" | less
	;;

	# all other files
	*)
		$EDITOR "$1"
	;;
esac
