cd /Users/ymmtny/Documents/GitHub/kwik-visual-code/develop/Solar2D/kwikTheCat/Solar2D/././

if test -f App/kwikTheCat/components/page4/layers/boo_pulse.lua.bak; then
  cp App/kwikTheCat/components/page4/layers/boo_pulse.lua.bak App/kwikTheCat/components/page4/layers/boo_pulse.lua
  rm App/kwikTheCat/components/page4/layers/boo_pulse.lua.bak
fi
if test -f App/kwikTheCat/models/page4/boo_animation.json.bak; then
  cp App/kwikTheCat/models/page4/boo_animation.json.bak App/kwikTheCat/models/page4/boo_animation.json
  rm App/kwikTheCat/models/page4/boo_animation.json.bak
fi
if test -f App/kwikTheCat/components/page4/index.lua.bak; then
  cp App/kwikTheCat/components/page4/index.lua.bak App/kwikTheCat/components/page4/index.lua
  rm App/kwikTheCat/components/page4/index.lua.bak
fi
if test -f App/kwikTheCat/models/page4/index.json.bak; then
  cp App/kwikTheCat/models/page4/index.json.bak App/kwikTheCat/models/page4/index.json
  rm App/kwikTheCat/models/page4/index.json.bak
fi

exit