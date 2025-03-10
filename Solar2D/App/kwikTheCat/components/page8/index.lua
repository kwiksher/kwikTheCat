local sceneName = ...
--
local model = {
  --name = "",
  components = {
    layers = {
      {
        background = {
        }
      },
      {
        cat_tail = {
          class={ "tremble", }  }
      },
      {
        cat_body = {
        }
      },
      {
        cat_apron = {
        }
      },
      {
        cat_face = {
        }
      },
      {
        cat_faceparts = {
        }
      },
      {
        cat_pow2 = {
        }
      },
      {
        cat_pow1 = {
        }
      },
      {
        cat_yodare = {
        }
      },
      {
        table = {
        }
      },
      {
        dish = {
        }
      },
      {
        Fish = {
        }
      },
      {
        star = {
          class={ "pulse", }  }
      },
      {
        heart = {
          class={ "linear", }  }
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
