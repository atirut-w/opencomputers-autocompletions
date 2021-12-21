---@class GPUProxy: ComponentProxy
--- Gets the currently set resolution.
---@field getResolution fun(): integer, integer
---
---
--- Writes a string to the screen, starting at the specified coordinates. The string will be copied to the screen's buffer directly, in a single row. This means even if the specified string contains line breaks, these will just be printed as special characters, the string will not be displayed over multiple lines. Returns `true` if the string was set to the buffer, `false` otherwise.
---
--- The optional fourth argument makes the specified text get printed vertically instead, if `true`.
---@field set fun(x: integer, y: integer, value: string, vertical?: boolean): boolean
---
---
--- Copies a portion of the screens buffer to another location. The source rectangle is specified by the `x`, `y`, `width` and `height` parameters. The target rectangle is defined by `x + tx`, `y + ty`, `width` and `height`. Returns `true` on success, `false` otherwise.
---@field copy fun(x: integer, y: integer, width: integer, height: integer, tx: integer, ty: integer): boolean
---
---
--- Fills a rectangle in the screen buffer with the specified character. The target rectangle is specified by the `x` and `y` coordinates and the rectangle's `width` and `height`. The fill character `char` must be a string of length one, i.e. a single character. Returns `true` on success, `false` otherwise.
---@field fill fun(x: integer, y: integer, width: integer, height: integer, char: string): boolean