
hl.bind(mouseMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mouseMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mouseMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mouseMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mouseMod .. " + mouse:281", hl.dsp.layout("togglesplit")) -- dwindle only

hl.bind(mouseMod .. " + mouse:274", hl.dsp.window.close())
hl.bind("mouse:281", hl.dsp.window.fullscreen())
hl.bind("mouse:282", hl.dsp.exec_cmd("python $HOME/.config/eww/scripts/update-mute.py"))