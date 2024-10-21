local M = {}

M.get_cursor_under_text = function ()
  return vim.fn.expand("<cfile>")
end

M.make_github_link = function (text)
  local repo_owner
end

return M
