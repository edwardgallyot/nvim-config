-- import neoscroll
local scroll_status, scroll = pcall(require, "neoscroll")
if not scroll_status then
    return
end

scroll.setup()
