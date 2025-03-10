local sceneName = ...
--
local model = {
  --name = "",
  components = {
    layers = {
      {
        background2 = {
        }
      },
      {
        background1 = {
        }
      },
      {
        cat_tail = {
        }
      },
      {
        cat_body = {
        }
      },
      {
        cat_paw2 = {
        }
      },
      {
        cat_paw1 = {
        }
      },
      {
        cat_ribbon = {
        }
      },
      {
        cat_face2 = {
        }
      },
      {
        cat_face1 = {
        }
      },
      {
        water = {
          class={ "linear", }  }
      },
      {
        Fish = {
          class={ "tremble", }  }
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
