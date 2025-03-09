local M = {
  -- audios = {}, sprites = {},
  -- videos = {}

  audios = {
    {
      name = "click.mp3",
      path = "audios/short",
      links = {{page = "page1"}, {page = "page2"}}
    }
  },
  videos = {
    {
      name = "videoA.mp4",
      path = "videos",
      links = {
        {page= "page01", layers = {"layerA1", "layerA10"}},
        {page= "page02", layers = {"layerA2", "layerA20"}}
      },
    },
    {
      name = "videoB.mp4",
      path = "videos",
      links = {{page= "page01", layers = {"layerB"}}}
      }
  },

}

return M
