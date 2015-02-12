rem «‚ğ‚©‚«‚©‚¦‚é
set drv=e:
set data=%drv%\cd\nano\halley

set fn=halley

copy %fn%.cfg "%drv%\TiMidiTy++\patches\cfgs"

%drv%
cd "\TiMidiTy++\Timidity++"
start timidity -c ../patches/cfgs/%fn%.cfg -Ow --output-stereo --sampling-freq=96000 -EFchorus=n,10 -EFreverb=d,127 --output-24bit --volume=90, --drum-power=90 %data%\%fn%.mid
timidity -c ../patches/cfgs/%fn%.cfg --output-stereo --sampling-freq=44100 -EFchorus=n,10 -EFreverb=d,127 --output-16bit --volume=90, --drum-power=90 %data%\%fn%.mid
