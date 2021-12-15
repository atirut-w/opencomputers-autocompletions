---@diagnostic disable-next-line: lowercase-global
component = {}

--- Returns a table with all components currently attached to the computer, with address as a key and component type as a value. It also provides iterator syntax via `__call`, so you can use it like so: `for address, componentType in component.list() do ... end`
---
--- If `filter` is set this will only return components that contain the filter string (this is not a pattern/regular expression). For example, `component.list("red")` will return `redstone` components.
---
--- If `true` is passed as a second parameter, exact matching is enforced, e.g. `red` will not match `redstone`.
---
---@param filter? string
---@param exact? boolean
---@return table | fun(): string, string
---@nodiscard
function component.list(filter, exact) end

--- Gets a 'proxy' object for a component that provides all methods the component provides as fields, so they can be called more directly (instead of via `invoke`). This is what's used to generate 'primaries' of the individual component types, i.e. what you get via `component.blah`.
---
--- For example, you can use it like so: `component.proxy(component.list("redstone")()).getInput(sides.north)`, which gets you a proxy for the first `redstone` component returned by the `component.list` iterator, and then calls `getInput` on it.
---
--- Note that proxies will always have at least two fields, `type` with the component's type name, and `address` with the component's address.
---
---@param address string
---@return ComponentProxy
---@nodiscard
function component.proxy(address) end
