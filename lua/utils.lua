local get_os = function()
  local uname = vim.loop.os_uname()
  local sysname = uname.sysname
  local os = {}
  os.IS_MAC = sysname == 'Darwin'
  os.IS_LINUX = sysname == 'Linux'
  os.IS_WINDOWS = sysname:find 'Windows' and true or false
  os.IS_WSL = os.IS_LINUX and uname.release:find 'Microsoft' and true or false
  return os
end

return {
  get_os = get_os,
}
