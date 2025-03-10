local sceneName = ...
--
local model = {
  --name = "",
  components = {
    layers = {
      {
        Backgrond = {
        }
      },
      {
        Clod = {
        }
      },
      {
        Birds = {
        }
      },
      {
        Wave3 = {
          class={ "linear", }  }
      },
      {
        Cat_body = {
          class={ "rotation", }  }
      },
      {
        Cat_face = {
          class={ "rotation", }  }
      },
      {
        Ship = {
          class={ "linear", }  }
      },
      {
        Ring = {
          class={ "linear", }  }
      },
      {
        Wave2 = {
          class={ "linear", }  }
      },
      {
        Fish = {
        }
      },
      {
        Fish2 = {
        }
      },
      {
        Fish3 = {
        }
      },
      {
        Wave1 = {
          class={ "linear", }  }
      },
      {
        Rod = {
          class={ "rotation", }  }
      },
      {
        String_long = {
          class={ "linear", }  }
      },
      {
        Cat_paw1 = {
          class={ "rotation", }  }
      },
      {
        Text = {
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
