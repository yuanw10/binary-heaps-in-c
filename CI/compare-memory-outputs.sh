#!/bin/bash

storyWC=$(cat story_out | wc -c)
storyDF=$(diff example_story_out story_out | wc -c)

if [ $storyWC -eq 0 ]; then
	printf "You are forcing the happy_birthday_geralt program to stop producing output. That's weird."
	exit 100
fi

if [ $storyDF -gt 0 ]; then
	printf "Your story_out does not match the example file. Your debug script has failed to throw a birthday party for Geralt."
	exit 102
fi

