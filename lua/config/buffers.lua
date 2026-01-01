local M = {}

local function is_listed(bufnr)
  return vim.fn.buflisted(bufnr) == 1
end

function M.close_current()
  if vim.bo.filetype == "neo-tree" then
    return
  end

  local current = vim.api.nvim_get_current_buf()
  if not is_listed(current) then
    return
  end

  local target = nil
  local alt = vim.fn.bufnr("#")

  if alt > 0 and alt ~= current and vim.api.nvim_buf_is_valid(alt) and is_listed(alt) then
    target = alt
  else
    for _, info in ipairs(vim.fn.getbufinfo({ buflisted = 1 })) do
      if info.bufnr ~= current then
        target = info.bufnr
        break
      end
    end
  end

  if target ~= nil then
    vim.api.nvim_set_current_buf(target)
  else
    vim.cmd("enew")
  end

  pcall(vim.api.nvim_buf_delete, current, { force = false })
end

return M
