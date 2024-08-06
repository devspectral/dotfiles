return {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()

require("onedarkpro").setup({
  colors = {
    dark = { bg = "#181818" }, -- changed to darker background  
  }
})

    vim.cmd("colorscheme onedark")
  end
}
