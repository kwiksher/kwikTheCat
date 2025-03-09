local sceneName = ...
--
local model = {
  --name = "page8",
	components = {
		layers = {
			{
				background = {
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
				cat_apron = {
					class = {  }
				}
			},
			{
				cat_face = {
					class = {  }
				}
			},
			{
				cat_faceparts = {
					class = {  }
				}
			},
			{
				cat_pow2 = {
					class = {  }
				}
			},
			{
				cat_pow1 = {
					class = {  }
				}
			},
			{
				cat_yodare = {
					class = {  }
				}
			},
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
				fish = {
					class = {  }
				}
			},
			{
				star = {
					class = {  }
				}
			},
			{
				heart = {
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