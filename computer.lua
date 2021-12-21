---@diagnostic disable-next-line: lowercase-global
computer = {}

---@alias arch
---| '"Lua 5.2"'
---| '"Lua 5.3"'

--- Get the current architecture.
---@return arch
---@nodiscard
function computer.getArchitecture() end

--- Set the current architecture and reboot the computer.
---@param architecture arch
function computer.setArchitecture(architecture) end

--- Get the address of the filesystem component from which to try to boot first. *New since OC 1.3*.
---
--- **Note:** This function is currently implemented in Lua BIOS. Be aware that custom BIOSes might not implement this function.
---@return string
---@nodiscard
function computer.getBootAddress() end

--- Set the address of the filesystem component from which to try to boot first. Call with nil / no arguments to clear. New since OC 1.3.
---
--- **Note:** This function is currently implemented in Lua BIOS. Be aware that custom BIOSes might not implement this function.
---@param address? string
function computer.setBootAddress(address) end

--- Tries to pull a signal from the queue, waiting up to the specified amount of time before failing and returning `nil`. If no timeout is specified waits forever.
---
--- The first returned result is the signal name, following results correspond to what was pushed in `pushSignal`, for example. These vary based on the event type. Generally it is more convenient to use `event.pull` from the event library. The return value is the very same, but the `event` library provides some more options.
---@param timeout? number
---@return string | nil, ...
function computer.pullSignal(timeout) end
