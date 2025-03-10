local sceneName = ...
--
local model = {
  --name = "",
  components = {
    layers = {
      {
        background4 = {
        }
      },
      {
        cloud2 = {
          class={ "linear", }  }
      },
      {
        cloud1 = {
          class={ "linear", }  }
      },
      {
        background3 = {
        }
      },
      {
        background2 = {
          class={ "properties", }  }
      },
      {
        background1 = {
          class={ "properties", }  }
      },
      {
        boo = {
          class={ "pulse", }  }
      },
      {
        car = {
        }
      },
      {
        wheel2 = {
          class={ "rotation", }  }
      },
      {
        wheel1 = {
          class={ "rotation", }  }
      },
      {
        text = {
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
