@echo off
mkdir out_mkv_mp4
for %%i in (*.mkv) do (
  ffmpeg -y -fflags +genpts -i "%%i" -vcodec copy -acodec copy "%%~ni.mp4"
)
