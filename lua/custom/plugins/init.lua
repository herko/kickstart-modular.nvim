-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'tpope/vim-rails' },
  { 'tpope/vim-ragtag' },
  { 'tpope/vim-surround' },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'olimorris/neotest-rspec',
      'zidhuss/neotest-minitest',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-rspec',
          require 'neotest-minitest',
        },
      }
    end,
    keys = {
      {
        '<leader>tr',
        function()
          require('neotest').run.run()
        end,
        desc = 'Run nearest test',
      },
    },
  },
}
