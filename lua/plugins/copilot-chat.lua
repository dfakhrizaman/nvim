return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      debug = false,
      window = {
        layout = "vertical",
        width = 0.2,
        relative = "editor",
        title = '🤖 AI Assistant', 
      },
    },
    config = function(_, opts)
      require("CopilotChat").setup(opts)

      -- Keybindings for CopilotChat
      vim.keymap.set("n", "<leader>cc", ":CopilotChatToggle<CR>", { desc = "Toggle Copilot Chat" })
      vim.keymap.set("n", "<leader>ce", ":CopilotChatExplain<CR>", { desc = "Copilot Explain" })
      vim.keymap.set("n", "<leader>ct", ":CopilotChatTests<CR>", { desc = "Copilot Generate Tests" })
      vim.keymap.set("n", "<leader>cf", ":CopilotChatFix<CR>", { desc = "Copilot Fix" })
      vim.keymap.set("n", "<leader>co", ":CopilotChatOptimize<CR>", { desc = "Copilot Optimize" })
      vim.keymap.set("n", "<leader>cd", ":CopilotChatDocs<CR>", { desc = "Copilot Docs" })
      vim.keymap.set("n", "<leader>cr", ":CopilotChatReview<CR>", { desc = "Copilot Review" })
      
      -- Visual mode keybindings
      vim.keymap.set("v", "<leader>cc", ":CopilotChatToggle<CR>", { desc = "Toggle Copilot Chat" })
      vim.keymap.set("v", "<leader>ce", ":CopilotChatExplain<CR>", { desc = "Copilot Explain" })
      vim.keymap.set("v", "<leader>cf", ":CopilotChatFix<CR>", { desc = "Copilot Fix" })
    end,
  },
}
