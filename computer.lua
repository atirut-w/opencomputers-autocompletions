computer = {}

--- The amount of memory currently unused, in bytes. If this gets close to zero your computer will probably soon crash with an out of memory error. Note that for OpenOS, it is highly recommended to at least have 1x tier 1.5 RAM stick or more. The os will boot on a single tier 1 ram stick, but quickly and easily run out of memory.
---@return integer
function computer.freeMemory() end

---  Get the address of the filesystem component from which to try to boot first. `New since OC 1.3`.
---@return string
function computer.getBootAddress() end

--- Tries to pull a signal from the queue, waiting up to the specified amount of time before failing and returning `nil`. Waits forever if no timeout is specified.
---
--- The first returned result is the signal name, following results correspond to what was pushed in `pushSignal`, for example. These vary based on the event type. Generally it is more convenient to use `event.pull` from the event library in OpenOS. The return value is the very same, but the `event` library provides some more options.
---@param timeout? number
---@return string name, ...
function computer.pullSignal(timeout) end

--- Set the address of the filesystem component from which to try to boot first. Call with nil / no arguments to clear. `New since OC 1.3`.
---@param address string
function computer.setBootAddress(address) end

---  The component address of the computer's temporary file system (if any), used for mounting it on startup.
function computer.tmpAddress() end

---  The total amount of memory installed in this computer, in bytes.
---@return integer
function computer.totalMemory() end
