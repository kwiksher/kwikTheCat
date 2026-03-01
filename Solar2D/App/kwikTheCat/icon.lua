local sceneName = ...
--
local scene = require('controller.scene').new(sceneName, {
    --name = "icon",
    components = {
      layers = {

             {
               background = { 
                 class={  }  }
             },
             
             {
               cat_body = { 
                 class={  }  }
             },
             
             {
               cat_apron = { 
                 class={  }  }
             },
             
             {
               cat_face = { 
                 class={  }  }
             },
             
             {
               cat_faceparts = { 
                 class={  }  }
             },
             
             {
               cat_pow2 = { 
                 class={  }  }
             },
             
             {
               cat_pow1 = { 
                 class={  }  }
             },
             
             {
               cat_yodare = { 
                 class={  }  }
             },
             
             {
               table = { 
                 class={  }  }
             },
             
             {
               dish = { 
                 class={  }  }
             },
             
             {
               fish = { 
                 class={  }  }
             },
             
             {
               star = { 
                 class={  }  }
             },
                       },
      audios = {
      },
      groups = {  },
      timers = {  },
      variables = {  },
      page = {  }
    },
    commands = {  },
    onInit = function(scene) print("onInit") end
})
--
return scene
