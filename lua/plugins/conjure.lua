return {
  "Olical/conjure",
  ft = { "clojure", "fennel", "janet" },
  dependencies = {
    "PaterJason/cmp-conjure",
  },
  config = function()
    -- Disable default mapping for K (we use it for LSP hover)
    vim.g["conjure#mapping#doc_word"] = false
    
    -- Set up Conjure-specific keybindings
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "clojure", "fennel", "janet" },
      callback = function()
        local opts = { buffer = true, silent = true }
        vim.keymap.set("n", "<localleader>ee", ":ConjureEval<CR>", opts)
        vim.keymap.set("n", "<localleader>er", ":ConjureEvalRoot<CR>", opts)
        vim.keymap.set("n", "<localleader>eb", ":ConjureEvalBuf<CR>", opts)
        vim.keymap.set("n", "<localleader>lv", ":ConjureLogVSplit<CR>", opts)
        vim.keymap.set("n", "<localleader>ls", ":ConjureLogSplit<CR>", opts)
      end,
    })
  end,
}
