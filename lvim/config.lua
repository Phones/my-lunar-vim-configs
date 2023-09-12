-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" }, }

-- Configurações do vim-doge
lvim.plugins = {
    -- ... outros plugins
    {
      "kkoomen/vim-doge",
      run = ":call doge#install()",
      config = function()
        vim.g.doge_mapping = "<leader>d" -- Define um mapeamento personalizado (substitua <leader>d por sua escolha)
        vim.g.doge_doc_standard_python = "numpy" -- Substitua pelo padrão de documentação da linguagem que você deseja usar
      end,
    },
    -- ... outros plugins
}

vim.api.nvim_set_keymap('n', '<C-F>', ':/', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-F>', ':vimgrep /', { noremap = true, silent = true })

-- Atalho para ToggleTerm no modo normal
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', { noremap = true, silent = true })

-- Atalho para ToggleTerm no modo de inserção
vim.api.nvim_set_keymap('i', '<C-t>', '<Esc>:ToggleTerm<CR>', { noremap = true, silent = true })

-- Navega para o split da direita
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-Right>', '<Esc><C-w>l', { noremap = true })

-- Navega para o split da esquerda
vim.api.nvim_set_keymap('n', '<C-Left>', '<C-\\><C-n><C-w>h', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-Left>', '<C-\\><C-n><C-w>h', { noremap = true })

------------------------------------ Abrir o telescope utilizando o control + p ------------------------------------
-- Atalho para o modo normal
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Atalho para o modo de inserção
vim.api.nvim_set_keymap('i', '<C-p>', '<Esc>:Telescope find_files<CR>', { noremap = true, silent = true })
--------------------------------------------------------------------------------------------------------------------

------------------------------------ Salvar o arquivo com control + s ----------------------------------------------
-- Atalho para salvar o arquivo no modo normal
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- Atalho para salvar o arquivo no modo de inserção
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
--------------------------------------------------------------------------------------------------------------------

------------------------------------ Voltar alteraação com control + z ---------------------------------------------
-- Atalho para desfazer no modo normal
vim.api.nvim_set_keymap('n', '<C-z>', ':undo<CR>', { noremap = true, silent = true })

-- Atalho para desfazer no modo de inserção
vim.api.nvim_set_keymap('i', '<C-z>', '<Esc>:undo<CR>', { noremap = true, silent = true })
--------------------------------------------------------------------------------------------------------------------

----------------------------------- Copiar texto selecionado com control + c ---------------------------------------
-- Atalho para copiar no modo visual
vim.api.nvim_set_keymap('x', '<C-c>', '"+y', { noremap = true, silent = true })

-- Atalho para copiar no modo de inserção
vim.api.nvim_set_keymap('i', '<C-c>', '<C-o>"+y', { noremap = true, silent = true })
--------------------------------------------------------------------------------------------------------------------

------------------------------------ Colar texto selecionado com control + c ---------------------------------------
-- Atalho para colar no modo normal
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })

-- Atalho para colar no modo de inserção
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })
--------------------------------------------------------------------------------------------------------------------


------------------------------------ Selecionar toda a linha com control + l ---------------------------------------
-- Atalho para selecionar a linha inteira no modo normal
vim.api.nvim_set_keymap('n', '<C-l>', 'V', { noremap = true })

-- Atalho para selecionar a linha inteira no modo visual
vim.api.nvim_set_keymap('x', '<C-l>', 'V', { noremap = true })
--------------------------------------------------------------------------------------------------------------------

------------------------------------ Recortar o text com control + x -----------------------------------------------
-- Atalho para recortar no modo normal
vim.api.nvim_set_keymap('n', '<C-x>', '"_d', { noremap = true })

-- Atalho para recortar no modo visual
vim.api.nvim_set_keymap('x', '<C-x>', '"_d', { noremap = true })
--------------------------------------------------------------------------------------------------------------------

------------------------------------ Selecionar todo o texto com control + a ---------------------------------------
-- Atalho para selecionar todo o texto no modo normal
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })

-- Atalho para selecionar todo o texto no modo visual
vim.api.nvim_set_keymap('x', '<C-a>', 'ggVG', { noremap = true })
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
-- Atalho para ToggleTerm no modo normal
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', { noremap = true, silent = true })

-- Atalho para ToggleTerm no modo de inserção
vim.api.nvim_set_keymap('i', '<C-t>', '<Esc>:ToggleTerm<CR>', { noremap = true, silent = true })
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
-- -- Atalho para comentar/descomentar linhas
-- vim.api.nvim_set_keymap('x', '<C-?>', ':Commentary<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-?>', ':Commentary<CR>', { noremap = true, silent = true })

-- --------------------------------------------------------------------------------------------------------------------


------------------------------------ Nerd Tree ---------------------------------------------------------------------
-- Atalho para abrir o NERDTree
-- vim.api.nvim_set_keymap('n', '<Space>e', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
--------------------------------------------------------------------------------------------------------------------

-- ------------------------------------ terminal ---------------------------------------------------------------------
-- -- Atalho para abrir um terminal em um split abaixo
-- vim.api.nvim_set_keymap('n', '<Leader>t', ':split term://bash<CR>', { noremap = true, silent = true })
-- --------------------------------------------------------------------------------------------------------------------

-- -- Configurações para o terminal
-- lvim.builtin.terminal.active = true -- Ativa o terminal LunarVim
-- lvim.builtin.terminal.execs = {
--   { "bash", "zsh" }, -- Pode adicionar outros shells aqui, como "fish", se desejar
-- }

-- -- Atalho para abrir o terminal em um split abaixo
-- vim.api.nvim_set_keymap("n", "<leader>t", ":LvimTerminal<CR>", { noremap = true, silent = true })












