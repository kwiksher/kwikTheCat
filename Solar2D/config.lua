local aspectRatio = display.pixelHeight / display.pixelWidth
application = {
	content =
	{
		fps = 60,
		width = 320,
		height = 480,
		scale = "letterbox",
		xAlign = "center",
		yAlign = "center",

		imageSuffix =
		{
			["@2x"] = 2.000,
			["@4x"] = 4.000
		}
	},
   _content = {
     width = aspectRatio > 1.5 and 320 or math.ceil( 480 / aspectRatio ),
     height = aspectRatio < 1.5 and 480 or math.ceil( 320 * aspectRatio ),
      -- width = 320,
      -- height = 480,
      -- scale = "adaptive", -- "letterBox",
      scale = "letterBox",
      fps = 30,
      imageSuffix = {
         ["@2x"] = 1.5,
         ["@4x"] = 3.0,
      },
   },
   _license =
        {
            -- google =
            -- {
            --     key = "",
            -- },
        },
 }