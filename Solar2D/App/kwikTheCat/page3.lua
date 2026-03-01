local sceneName = ...
--
local scene = require('controller.scene').new(sceneName, {
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
        cat_ribbon1 = {
        }
      },
      {
        cat_face1 = {
        }
      },
      {
        baloon = {
        }
      },
      {
        fish = {
          class={ "drag", }  }
      },
      {
        ball = {
          class={ "button", }  }
      },
      {
        ball_over = {
        }
      },
      {
        text = {
        }
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
})
--
return scene
