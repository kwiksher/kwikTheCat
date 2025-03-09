local sceneName = ...
--
local scene = require('controller.scene').new(sceneName, {
    --name = "portrait",
    components = {
      layers = {

             {
               bg = { 
                 class={  }  }
             },
             
             {
               copyright = { 
                 class={  }  }
             },
             
             {
               GroupA = { 
  {
    Ellipse = { 
      class={  }  }
  },
   
  {
    SubA = { 
      class={  }  }
  },
   
                 class={  }  }
             },
             
             {
               star = { 
                 class={  }  }
             },
             
             {
               hello = { 
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
