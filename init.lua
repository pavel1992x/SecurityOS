do
  local addr, invoke = computer.getBootAddress(), component.invoke
  local function loadfile(file)
    local handle = assert(invoke(addr, "open", file))
    local buffer = ""
    repeat
      local data = invoke(addr, "read", handle, math.huge)
      buffer = buffer .. (data or "")
    until not data
    invoke(addr, "close", handle)
    return load(buffer, "=" .. file, "bt", _G)
  end
  loadfile("/lib/core/boot.lua")(loadfile)
end

while true do
  local result, reason = xpcall(require("shell").getShell(), function(msg)
    return tostring(msg).."\n"..debug.traceback()
  end)
  if not result then
    io.stderr:write((reason ~= nil and tostring(reason) or "unknown error") .. "\n")
    comp = require('computer')
    gpu = require('component').gpu
    term = require('term')
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()
    comp.beep()

    gpu.setBackground(0x1a30f0)
    gpu.setForeground(0xFFFFFF)
    gpu.fill(1, 1, 80, 25, " ")
    term.setCursor(1,1)
    print('Error 0x0345')
    os.sleep(0.2)
    print('@sd -> 0x353')
    os.sleep(0.2)
    print('@3d -> 0x33f53')
    os.sleep(0.2)
    print('@sd4d -> 0x35ddf3')
    print('Thats error sometimes is appeared, not aproved your eyes, ignore, please, good luck!')
    os.sleep(0.2)
    print('Rebooting...')
    os.sleep(2)
    comp.beep()
    os.execute('reboot')
  end
end
