return {
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      {
        'nvim-tree/nvim-web-devicons',
        enabled = vim.g.have_nerd_font,
        opts = {
          override = {
            tsx = {
              icon = '',
              color = '#519ABA',
              cterm_color = '65',
              name = 'tsx',
            },
            ['.env.example'] = {
              icon = '',
              color = '#faf743',
              cterm_color = '227',
              name = 'Env',
            },
            ['.env.local'] = {
              icon = '',
              color = '#faf743',
              cterm_color = '227',
              name = 'Env',
            },
            ['.env.development'] = {
              icon = '',
              color = '#faf743',
              cterm_color = '227',
              name = 'Env',
            },
            ['.env.production'] = {
              icon = '',
              color = '#faf743',
              cterm_color = '227',
              name = 'Env',
            },
            ['.env.stating'] = {
              icon = '',
              color = '#faf743',
              cterm_color = '227',
              name = 'Env',
            },
            ['.node-version'] = {
              icon = '',
              color = '#417E38',
              cterm_color = '197',
              name = 'NodeModules',
            },
            lock = { icon = '󰌾', name = 'Lock' },
            mp3 = { icon = '󰎆', name = 'Mp3' },
            mp4 = { icon = '', name = 'Mp4' },
            out = { icon = '', name = 'Out' },
            ['robots.txt'] = { icon = '󰚩', name = 'Robots', color = '#E8274B' },
            ttf = { icon = '', name = 'TrueTypeFont' },
            rpm = { icon = '', name = 'Rpm' },
            woff = { icon = '', name = 'WebOpenFontFormat' },
            woff2 = { icon = '', name = 'WebOpenFontFormat2' },
            xz = { icon = '', name = 'Xz' },
            zip = { icon = '', name = 'Zip' },
          },
        },
      },
    },
    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

      vim.keymap.set('n', '<leader>/', function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          previewer = true,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      vim.keymap.set('n', '<leader>s/', function()
        builtin.live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end, { desc = '[S]earch [/] in Open Files' })

      vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[S]earch [N]eovim files' })
    end,
  },
}
