EnablePrimaryMouseButtonEvents = true

function OnEvent(event, arg)

    current_mkey = GetMKeyState()
    --Script uses the M key as a switch for turning macro on and off, currently set to M2.
    --If you don't have a mouse or keyboard that uses these, you can remove the GetMKeyState part
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 2 and GetMKeyState() == 2) then
            OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
            PressAndReleaseKey("f2")
            Sleep(50)
            PressMouseButton(1)
            Sleep(5)
            ReleaseMouseButton(1)
            Sleep(50)
            PressAndReleaseKey("f1")
    end
end
