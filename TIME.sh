#!/bin/bash
echo "Local Time"
export TZ=America/New_York
date +"%A %B %d %Y %T"
date +"%A %B %d %Y %r"
echo "----------------------------"
echo "Time in UTC"
export TZ=UTC
date +"%A %B %d %Y %T"
date +"%A %B %d %Y %r"
echo "----------------------------"
echo "Time in Paris"
export TZ=Europe/Paris
date +"%A %B %d %Y %T"
date +"%A %B %d %Y %r"
echo "----------------------------"
echo "Time in Los Angeles"
export TZ=America/Los_Angeles
date +"%A %B %d %Y %T"
date +"%A %B %d %Y %r"
echo "----------------------------"
echo "Time in Sydney"
export TZ=Australia/Sydney
date +"%A %B %d %Y %T"
date +"%A %B %d %Y %r"
unset TZ
