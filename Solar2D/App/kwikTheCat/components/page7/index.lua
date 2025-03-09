local sceneName = ...
--
local model = {
  --name = "page7",
	components = {
		layers = {
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
				cat_tail = {
					class = {  }
				}
			},
			{
				cat_body = {
					class = {  }
				}
			},
			{
				cat_paw2 = {
					class = {  }
				}
			},
			{
				cat_paw1 = {
					class = {  }
				}
			},
			{
				cat_ribbon = {
					class = {  }
				}
			},
			{
				cat_face2 = {
					class = {  }
				}
			},
			{
				cat_face1 = {
					class = {  }
				}
			},
			{
				water = {
					class = {  }
				}
			},
			{
				fish = {
					class = {  }
				}
			},
			{
				text = {
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