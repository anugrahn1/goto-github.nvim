local M = {}

M.get_cursor_under_text = function()
  return vim.fn.expand("<cfile>")
end

M.get_owner = function(str)
  local result = str:match("([^/]+)")
  return result
end

M.get_repo = function(str)
  local result = str:match("/(.+)")
  return result
end

M.build_link = function(owner, repo)
  local link = "https://www.github.com/" .. owner .. "/" .. repo
  return link
end

M.open_link = function()
  local text = M.get_cursor_under_text()
  local owner = M.get_owner(text)
  local repo = M.get_repo(text)
  local link = M.build_link(owner, repo)

  vim.fn.jobstart({ "xdg-open", link })
  -- TODO: Test these on respective Operating Systems
  -- vim.fn.jobstart({"open", link})   -- For macOS
  -- vim.fn.jobstart({"start", link})  -- For Windows
end

M.setup = function()
  vim.api.nvim_create_user_command("OpenGithubLink", M.open_link, {})
end

return M
