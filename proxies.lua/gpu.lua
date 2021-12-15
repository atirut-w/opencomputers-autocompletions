---@class GPUProxy: ComponentProxy
--- Writes a string to the screen, starting at the specified coordinates. The string will be copied to the screen's buffer directly, in a single row. This means even if the specified string contains line breaks, these will just be printed as special characters, the string will not be displayed over multiple lines. Returns `true` if the string was set to the buffer, `false` otherwise.
---
--- The optional fourth argument makes the specified text get printed vertically instead, if `true`.
---@field set fun(x: integer, y: integer, value: string, vertical?: boolean): boolean
