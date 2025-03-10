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
        wave4 = {
        }
      },
      {
        wave3 = {
        }
      },
      {
        wave2 = {
        }
      },
      {
        wave1 = {
        }
      },
      {
        bubble = {
          class={ "linear", }  }
      },
      {
        string = {
          class={ "linear", }  }
      },
      {
        rock = {
        }
      },
      {
        starfish = {
        }
      },
      {
        shell = {
        }
      },
      {
        crab = {
          class={ "linear","rotation", }  }
      },
      {
        fish6 = {
        }
      },
      {
        fish5 = {
        }
      },
      {
        fish4 = {
        }
      },
      {
        fish3 = {
        }
      },
      {
        fish2 = {
        }
      },
      {
        fish1 = {
        }
      },
      {
        weed = {
        }
      },
      {
        Fish = {
          class={ "linear","button", }  }
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
  commands = {   "onFish",  },
  onInit = function(scene) print("onInit") end
}
local scene = require('controller.scene').new(sceneName, model)
--
return scene
