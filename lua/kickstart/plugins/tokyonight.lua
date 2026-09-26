local function gh(repo) return 'https://github.com/' .. repo end

-- [[ Colorscheme ]]
-- You can easily change to a different colorscheme.
-- Change the name of the colorscheme plugin below, and then
-- change the command under that to load whatever the name of that colorscheme is.
--
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
vim.pack.add { gh 'folke/tokyonight.nvim' }

-- Tokyo Night with a transparent background: the terminal's own background
-- (e.g. Ghostty `background-opacity`) shines through instead of Neovim
-- painting an opaque colour. `transparent` drops the Normal/Sidebar/Float
-- backgrounds; the explicit highlight overrides below also clear the
-- ones Tokyo Night keeps at a slightly different shade (statusline, tabs).
---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  style = 'night',
  transparent = true,
  styles = {
    comments = { italic = false }, -- Disable italics in comments
    sidebars = 'transparent',
    floats = 'transparent',
    buffers = 'transparent',
  },
  on_highlights = function(hl, _)
    hl.Normal = { bg = 'NONE' }
    hl.NormalNC = { bg = 'NONE' }
    hl.StatusLine = { bg = 'NONE' }
    hl.StatusLineNC = { bg = 'NONE' }
    hl.TabLine = { bg = 'NONE' }
    hl.TabLineFill = { bg = 'NONE' }
    hl.WinBar = { bg = 'NONE' }
    hl.WinBarNC = { bg = 'NONE' }
    hl.SignColumn = { bg = 'NONE' }
    hl.LineNr = { bg = 'NONE' }
    hl.CursorLine = { bg = 'NONE' }
    hl.CursorLineNr = { bg = 'NONE' }
  end,
}

-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
vim.cmd.colorscheme 'tokyonight-night'

-- vim: ts=2 sts=2 sw=2 et
