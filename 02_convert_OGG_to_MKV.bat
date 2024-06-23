@echo off
mkdir out_ogg_mkv
for %%i in (*.ogg) do (
ffmpeg -y -i "%%i" -max_muxing_queue_size 100000 -c:v h264_qsv -global_quality 18 -look_ahead 1 -pix_fmt nv12 "out/%%~ni.mkv"
)

 