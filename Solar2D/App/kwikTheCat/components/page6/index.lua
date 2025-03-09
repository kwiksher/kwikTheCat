local sceneName = ...
--
local model = {
  --name = "page6",
	components = {
		layers = {
			{
				background = {
					class = {  }
				}
			},
			{
				wave4 = {
					class = {  }
				}
			},
			{
				wave3 = {
					class = {  }
				}
			},
			{
				wave2 = {
					class = {  }
				}
			},
			{
				wave1 = {
					class = {  }
				}
			},
			{
				bubble = {
					class = {  }
				}
			},
			{
				string = {
					class = {  }
				}
			},
			{
				rock = {
					class = {  }
				}
			},
			{
				starfish = {
					class = {  }
				}
			},
			{
				shell = {
					class = {  }
				}
			},
			{
				crab = {
					class = {  }
				}
			},
			{
				fish6 = {
					class = {  }
				}
			},
			{
				fish5 = {
					class = {  }
				}
			},
			{
				fish4 = {
					class = {  }
				}
			},
			{
				fish3 = {
					class = {  }
				}
			},
			{
				fish2 = {
					class = {  }
				}
			},
			{
				fish1 = {
					class = {  }
				}
			},
			{
				weed = {
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