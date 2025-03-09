local sceneName = ...
--
local model = {
  --name = "page5",
	components = {
		layers = {
			{
				Backgrond = {
					class = {  }
				}
			},
			{
				Clod = {
					class = {  }
				}
			},
			{
				Birds = {
					class = {  }
				}
			},
			{
				Wave3 = {
					class = {  }
				}
			},
			{
				Cat_body = {
					class = {  }
				}
			},
			{
				Cat_face = {
					class = {  }
				}
			},
			{
				Ship = {
					class = {  }
				}
			},
			{
				Ring = {
					class = {  }
				}
			},
			{
				Wave2 = {
					class = {  }
				}
			},
			{
				Fish = {
					class = {  }
				}
			},
			{
				Fish2 = {
					class = {  }
				}
			},
			{
				Fish3 = {
					class = {  }
				}
			},
			{
				Wave1 = {
					class = {  }
				}
			},
			{
				Rod = {
					class = {  }
				}
			},
			{
				String_long = {
					class = {  }
				}
			},
			{
				Cat_paw1 = {
					class = {  }
				}
			},
			{
				Text = {
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