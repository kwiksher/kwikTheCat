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
        name = {
        }
      },
      {
        cat = {
        }
      },
      {
        cat_face1 = {
          class={ "blink", }  }
      },
      {
        title_base = {
        }
      },
      {
        title3 = {
        }
      },
      {
        title2 = {
        }
      },
      {
        title1 = {
        }
      },
      {
        starfish = {
          class={ "button", }  }
      },
      {
        fish = {
          class={ "button", }  }
      },
    },
    audios = {
      long={  }, short={   }
    },
    groups = {
      {
        groupCat = {
          class={ "button", }  }
      },
    },
    timers = {  },
    variables = {  },
    joints    = {  },
    page = {  }
  },
  commands = {   "nextPage",   "previousPage",  },
  onInit = function(scene) print("onInit") end
}
local scene = require('controller.scene').new(sceneName, model)
--
return scene
