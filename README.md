# TempLogger

## Motivation
adapting conky to rockpi system I found out, that I have some drives,
hddtemp does not provide temperature for. A check with smartctl
showed, that smartctl does provide temperature for all of my drives.
But smartctl works only for superusers  and conky is a user process.
Therefore I wrote a little script, that runs privileged smartctl and
writes result to `/tmp`, where user processes can read them.
`/tmp` ususally gets mounted to a ramdisk, so access is not too expensive.

## Requirements

* TempLogger uses `smartctl` which is part of `smartmontools` package

## Installation

* download the package
* run `sudo make install`
