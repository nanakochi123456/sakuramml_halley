rem «‚ğ‚©‚«‚©‚¦‚é
set drv=f:
set data=%drv%\bgm\halley

set fn=halley

copy %fn%.cfg "%drv%\TiMidiTy++\patches\cfgs"

%drv%
cd "\TiMidiTy++\Timidity++"
start timidity -c ../patches/cfgs/%fn%.cfg -Ow --output-stereo -s 48000 --reverb=d,127 %data%\%fn%.mid
timidity -c ../patches/cfgs/%fn%.cfg --output-stereo -s 48000 --reverb=d,127 %data%\%fn%.mid
