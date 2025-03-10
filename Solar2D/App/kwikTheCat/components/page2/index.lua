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
        cloud3 = {
        }
      },
      {
        cloud2 = {
        }
      },
      {
        cloud1 = {
        }
      },
      {
        background3 = {
        }
      },
      {
        background2 = {
        }
      },
      {
        background1 = {
        }
      },
      {
        cat = {
          class={ "linear", }  }
      },
      {
        text2 = {class= {"sync"}
        }
      },
      {
        text1 = { class= {"sync"}
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
