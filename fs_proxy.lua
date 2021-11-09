---@class FileSystemProxy : ComponentProxy
local proxy = {
    ---@param path string
    ---@param mode string
    ---@return number
    open = function(path, mode) end,

    ---@param path string
    exists = function(path) end,

    ---@param path string
    ---@return boolean
    isDirectory = function(path) end,

    ---@param path string
    ---@return table<integer,string>
    list = function(path) end,

    ---@param handle number
    close = function(handle) end,

    ---@param handle number
    ---@param count number
    ---@return string|nil
    read = function(handle, count) end,
}
