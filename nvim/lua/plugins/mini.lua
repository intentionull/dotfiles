return { 'nvim-mini/mini.nvim', version = 'false', 
config = function()
require('mini.files').setup()
require('mini.pick').setup()
require('mini.surround').setup()
require('mini.indentscope').setup()
require('mini.pairs').setup()
require('mini.statusline').setup()
require('mini.cursorword').setup()
require('mini.move').setup()
require('mini.bufremove').setup()
require('mini.notify').setup()
require('mini.trailspace').setup()
require('mini.icons').setup()
require('mini.starter').setup()
require('mini.sessions').setup()
end
}
