---@class GPUProxy: ComponentProxy
local gpu = {
    --- Gets the currently set resolution.
    ---@return integer width, integer height
    getResolution = function() end,

    --- Writes a string to the screen, starting at the specified coordinates. The string will be copied to the screen's buffer directly, in a single row. This means even if the specified string contains line breaks, these will just be printed as special characters, the string will not be displayed over multiple lines. Returns `true` if the string was set to the buffer, `false` otherwise.
    ---
    --- The optional fourth argument makes the specified text get printed vertically instead, if `true`.
    ---@param x number
    ---@param y number
    ---@param value string
    ---@param vertical? boolean
    ---@return boolean
    set = function(x,y,value,vertical) end,

    --- Copies a portion of the screens buffer to another location. The source rectangle is specified by the `x`, `y`, `width` and `height` parameters. The target rectangle is defined by `x + tx`, `y + ty`, `width` and `height`. Returns `true` on success, `false` otherwise.
    ---@param x number
    ---@param y number
    ---@param width number
    ---@param height number
    ---@param tx number
    ---@param ty number
    ---@return boolean
    copy = function(x,y,width,height,tx,ty) end,

    --- Fills a rectangle in the screen buffer with the specified character. The target rectangle is specified by the `x` and `y` coordinates and the rectangle's `width` and `height`. The fill character `char` must be a string of length one, i.e. a single character. Returns `true` on success, `false` otherwise.
    ---
    --- Note that filling screens with spaces (` `) is usually less expensive, i.e. consumes less energy, because it is considered a “clear” operation (see config).
    ---@param x number
    ---@param y number
    ---@param width number
    ---@param height number
    ---@param char string
    fill = function(x,y,width,height,char) end,
}
