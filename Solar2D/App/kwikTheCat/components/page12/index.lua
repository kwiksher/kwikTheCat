local sceneName = ...
--
local model = {
  --name = "page12",
	components = {
		layers = {
			{
				background = {
					class = {  }
				}
			},
			{
				canvas = {
					class = {
						"canvas",
					}
				}
			},
			{
				frame = {
					class = {  }
				}
			},
			{
				color8 = {
					class = {
						"button",
					}
				}
			},
			{
				color7 = {
					class = {
						"button",
					}
				}
			},
			{
				color6 = {
					class = {
						"button",
					}
				}
			},
			{
				color5 = {
					class = {
						"button",
					}
				}
			},
			{
				color4 = {
					class = {
						"button",
					}
				}
			},
			{
				color3 = {
					class = {
						"button",
					}
				}
			},
			{
				color2 = {
					class = {
						"button",
					}
				}
			},
			{
				color1 = {
					class = {
						"button",
					}
				}
			},
			{
				back2 = {
					class = {  }
				}
			},
			{
				back1 = {
					class = {
						"button",
					}
				}
			},
			{
				reload2 = {
					class = {
						"button",
					}
				}
			},
			{
				reload1 = {
					class = {  }
				}
			},
			{
				crab = {
					class = {
						"button",
					}
				}
			},
			{
				save2 = {
					class = {
						"button",
					}
				}
			},
			{
				save1 = {
					class = {  }
				}
			},
			{
				starfish = {
					class = {
						"button",
					}
				}
			},
			{
				string = {
					class = {  }
				}
			},
			{
				brush3 = {
					class = {
						"button",
					}
				}
			},
			{
				brush2 = {
					class = {
						"button",
					}
				}
			},
			{
				brush1 = {
					class = {
						"button",
					}
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
	commands = {
		"middleBrush",
		"largeBrush",
		"clear",
		"undo",
		"smallBrush",
		"tapHandler",
		"redo",
		"save",
		"back",
	},
	onInit = function(scene)
		print("onInit")
	end
}

local scene = require('controller.scene').new(sceneName, model)
--
return scene