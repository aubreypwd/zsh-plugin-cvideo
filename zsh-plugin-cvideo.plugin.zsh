#!/bin/zsh

if [[ $(command -v antigen) ]]; then
	antigen bundle aubreypwd/zsh-plugin-require@1.0.1
	antigen apply

	require "ffmpeg" "brew reinstall ffmpeg" "brew" # Automatically install ffmpeg using homebrew.
fi

###
 # Compress video.
 #
 # @since Tuesday, November 6, 2018
 # @since 1.0.0
 #
 # E.g:  compress-video *.mov
 ##
function cvideo {
	if ! [[ -x $(command -v ffmpeg) ]]; then >&2 echo "Please install ffmpeg to use cvideo." && return; fi

	local f=$(basename -- "$1")
	local e="${f##*.}"

	ffmpeg -i "$1" -vcodec libx264 -crf 20 -y "$1-compressed.$e"
}
