@echo off
mkdir out_mkv
for %%i in (*.mp4) do (
  ffmpeg -y -fflags +genpts -i "%%i" -vcodec copy -acodec copy "%%~ni.mkv"
)
