local sceneName = ...
--
local model = {
  --name = "page2",
	components = {
		layers = {
			{
				background4 = {
					class = {  }
				}
			},
			{
				cloud3 = {
					class = {  }
				}
			},
			{
				cloud2 = {
					class = {  }
				}
			},
			{
				cloud1 = {
					class = {  }
				}
			},
			{
				background3 = {
					class = {  }
				}
			},
			{
				background2 = {
					class = {  }
				}
			},
			{
				background1 = {
					class = {  }
				}
			},
			{
				cat = {
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