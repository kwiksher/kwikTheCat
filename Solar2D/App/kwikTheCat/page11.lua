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
        fish2 = {
        }
      },
      {
        fish1 = {
          class={ "multiplier", }  }
      },
      {
        background1 = {
        }
      },
      {
        star2 = {
        }
      },
      {
        star1 = {
        }
      },
      {
        cat_tail = {
        }
      },
      {
        cat_paw4 = {
        }
      },
      {
        cat_paw3 = {
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
        cat_ribbon2 = {
        }
      },
      {
        cat_body = {
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
        cat_ribbon1 = {
        }
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
