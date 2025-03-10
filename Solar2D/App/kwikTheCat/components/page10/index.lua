local sceneName = ...
--
local model = {
  --name = "",
  components = {
    layers = {
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
        effect = {
        }
      },
      {
        bone = {
          class={ "linear", }  }
      },
      {
        star5 = {
          class={ "pulse", }  }
      },
      {
        star4 = {
          class={ "pulse", }  }
      },
      {
        star3 = {
          class={ "pulse", }  }
      },
      {
        star2 = {
          class={ "pulse", }  }
      },
      {
        star1 = {
          class={ "pulse", }  }
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
