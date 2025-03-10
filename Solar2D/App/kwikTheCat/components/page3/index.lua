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
          class={ "rotation", }  }
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
        cat_ribbon1 = {
        }
      },
      {
        cat_face1 = {
        }
      },
      {
        baloon = {
          class={ "linear", }  }
      },
      {
        fish = {
          class={ "drag", "linear"}  }
      },
      {
        ball = {
          class={ "button","linear", }  }
      },
      {
        ball_over = {
        }
      },
      {
        text = {
          class={ "linear", }  }
      },
    },
    audios = {
    },
    groups = {
    },
    timers = {  },
    variables = {  },
    joints    = {  },
    page = {  }
  },
  commands = {   "eventOne",   "eventTwo",   "eventThree",  },
  onInit = function(scene) print("onInit") end
}
local scene = require('controller.scene').new(sceneName, model)
--
return scene
