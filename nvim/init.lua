vim.g.mapleader = " "
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")
vim.cmd("cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!")
vim.keymap.set('n', '<Tab>',':CompetiTest run<CR>')
vim.cmd("noremap 1 <c-w>h")  -- <- move to split to the left
vim.cmd("nnoremap 3 <c-w>j")  -- \/ move to the split below
vim.cmd("nnoremap 4 <c-w>k")  -- /\ move to the split above
vim.cmd("nnoremap 2 <c-w>l")  -- -> move to the split to the right

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup("plugins")


