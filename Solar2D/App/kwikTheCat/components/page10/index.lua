local sceneName = ...
--
local model = {
  --name = "page10",
	components = {
		layers = {
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
				cat_tail = {
					class = {  }
				}
			},
			{
				cat_paw4 = {
					class = {  }
				}
			},
			{
				cat_paw3 = {
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
				cat_ribbon2 = {
					class = {  }
				}
			},
			{
				cat_body = {
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
				cat_ribbon1 = {
					class = {  }
				}
			},
			{
				effect = {
					class = {  }
				}
			},
			{
				bone = {
					class = {  }
				}
			},
			{
				star5 = {
					class = {  }
				}
			},
			{
				star4 = {
					class = {  }
				}
			},
			{
				star3 = {
					class = {  }
				}
			},
			{
				star2 = {
					class = {  }
				}
			},
			{
				star1 = {
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