local sceneName = ...
--
local model = {
  --name = "",
  components = {
    layers = {
      {
        table = {
        }
      },
      {
        dish = {
        }
      },
      {
        fishbone = {
        }
      },
      {
        Fish = {
          class={ "switch", }  }
      },
      {
        fork = {
          class={ "linear", }  }
      },
      {
        knife = {
          class={ "linear", }  }
      },
      {
        effect = {
        }
      },
      {
        text2 = {
        }
      },
      {
        text1 = {
        }
      },
    },
    audios = {
      long={  }, short={   }
    },
    groups = {
    },
    timers = {  },
    variables = {  },
    joints    = {  },
    page = {  }
  },
  commands = {  },
  onInit = function(scene) print("onInit") end
}
local scene = require('controller.scene').new(sceneName, model)
--
return scene
