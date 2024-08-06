return { 
  "vimwiki/vimwiki",
  event = "BufEnter *.md",
   init = function() 
        vim.g.vimwiki_list = {
            {
            path = '~/Documents/wiki',
            syntax = 'markdown',
            ext = '.md',
            },
        }
        vim.g.vimwiki_ext2syntax = { }
    end,
    } 
