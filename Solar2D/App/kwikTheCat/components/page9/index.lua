local sceneName = ...
--
local model = {
  --name = "page9",
	components = {
		layers = {
			{
				table = {
					class = {  }
				}
			},
			{
				dish = {
					class = {  }
				}
			},
			{
				fishbone = {
					class = {  }
				}
			},
			{
				fish = {
					class = {  }
				}
			},
			{
				fork = {
					class = {  }
				}
			},
			{
				knife = {
					class = {  }
				}
			},
			{
				effect = {
					class = {  }
				}
			},
			{
				text2 = {
					class = {  }
				}
			},
			{
				text1 = {
					class = {  }
				}
			},
		},
		audios = {
			long = {  },
			short = {   }
		},
		groups = {
    },
		timers = {  },
		variables = {  },
		joints = {  },
		page = {  }
	},
	commands = {  },
	onInit = function(scene)
		print("onInit")
	end
}

local scene = require('controller.scene').new(sceneName, model)
--
return scene