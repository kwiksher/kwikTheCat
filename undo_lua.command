cd /Users/ymmtny/Documents/GitHub/kwik-visual-code/develop/Solar2D/kwikTheCat/Solar2D/././

if test -f App/kwikTheCat/components/page3/layers/baloon_linear.lua.bak; then
  cp App/kwikTheCat/components/page3/layers/baloon_linear.lua.bak App/kwikTheCat/components/page3/layers/baloon_linear.lua
  rm App/kwikTheCat/components/page3/layers/baloon_linear.lua.bak
fi
if test -f App/kwikTheCat/models/page3/baloon_animation.json.bak; then
  cp App/kwikTheCat/models/page3/baloon_animation.json.bak App/kwikTheCat/models/page3/baloon_animation.json
  rm App/kwikTheCat/models/page3/baloon_animation.json.bak
fi
if test -f App/kwikTheCat/components/page3/index.lua.bak; then
  cp App/kwikTheCat/components/page3/index.lua.bak App/kwikTheCat/components/page3/index.lua
  rm App/kwikTheCat/components/page3/index.lua.bak
fi
if test -f App/kwikTheCat/models/page3/index.json.bak; then
  cp App/kwikTheCat/models/page3/index.json.bak App/kwikTheCat/models/page3/index.json
  rm App/kwikTheCat/models/page3/index.json.bak
fi

exit