Analemma 2015
=============

Records images daily at the times specified in times.txt.

Installing
----------
Run

```
make
sudo make install
```

Note that any existing crons for the current user will be overwritten.

times.txt
---------
Contains the times at which pictures should be taken in 24-hour format. Times should be in UTC (e.g. 1400). Specify each time on a new line.

capture_command.txt
-------------------
Contains the command used to capture images.

Example:

```
mplayer tv:// -tv driver=v4l2:width=640:height=480:outfmt=i420:norm=PAL:device=/dev/video0:input=2:fps=30 -vo png -frames 25
```

Take multiple frames for safety: to allow time for initialisation and to provide confirmation the camera isn't moving.