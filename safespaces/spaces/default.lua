return {
-- background, can't be swapped in and at the end of the viewport
"layers/add=bg",
"layers/layer_bg/settings/depth=50.0",
"layers/layer_bg/settings/radius=50.0",
"layers/layer_bg/settings/fixed=true",
"layers/layer_bg/settings/ignore=true",

-- a little extra work to define a multi- mapped textured cube
"layers/layer_bg/add_model/cube=bg",
"layers/layer_bg/models/bg/faces/1/source=wallpapers/corona/0.png", -- +x
"layers/layer_bg/models/bg/faces/2/source=wallpapers/corona/1.png", -- -x
"layers/layer_bg/models/bg/faces/3/source=wallpapers/corona/2.png", -- +y
"layers/layer_bg/models/bg/faces/4/source=wallpapers/corona/3.png", -- -y
"layers/layer_bg/models/bg/faces/5/source=wallpapers/corona/4.png", -- +z
"layers/layer_bg/models/bg/faces/6/source=wallpapers/corona/5.png", -- -z

-- add another cylinder-180 that can do sbs
"layers/add=vid",
"layers/layer_vid/settings/depth=40.0",
"layers/layer_vid/settings/radius=40.0",
"layers/layer_vid/settings/fixed=true",
"layers/layer_vid/settings/ignore=true",
"layers/layer_vid/add_model/halfcylinder=vr180",
"layers/layer_vid/models/vr180/set_default",
"layers/layer_vid/models/vr180/flip=true",
"layers/layer_vid/models/vr180/connpoint/reveal_focus=vr180sbs",
"layers/layer_vid/models/vr180/scale=2",
"layers/layer_vid/models/vr180/stereoscopic=sbs",
"layers/layer_vid/models/vr180/spin=0 0 -180",

-- an interactive foreground layer with a transparent terminal
"layers/add=fg",
"layers/layer_fg/settings/active_scale=3",
"layers/layer_fg/settings/inactive_scale=1",
"layers/layer_fg/settings/depth=2.0",
"layers/layer_fg/settings/radius=10.0",
"layers/layer_fg/settings/spacing=0.0",
"layers/layer_fg/settings/vspacing=0.1",
"layers/layer_fg/terminal=bgalpha=128",

-- a hidden layer with the video screen
"layers/add=mid",
"layers/layer_mid/settings/radius=12.0",
"layers/layer_mid/settings/depth=2.0",
"layers/layer_mid/settings/spacing=1.0",
"layers/layer_mid/settings/active_scale=1",
"layers/layer_mid/settings/inactive_scale=1",
"layers/layer_mid/add_model/rectangle=screen",
"layers/layer_mid/models/screen/connpoint/reveal_focus=moviescreen",
"layers/layer_mid/models/screen/scale=5",

-- and set the right focus
"layers/layer_fg/focus",

-- terminal should be the focus of this layer, add a shutdown event should
-- this terminal be destroyed, remove this when you know how to exit :-)
"layers/current/models/selected/events/destroy=shutdown",

-- Other example models to add to your scene:
-- a model layer that starts out hidden for mostly-non-interactive sources
-- "layers/add=view",
-- "layers/layer_view/settings/radius=20.0",
-- "layers/layer_view/settings/depth=10.0",
-- "layers/layer_view/settings/active_scale=6",
-- "layers/layer_view/settings/ignore=true",
-- "layers/layer_view/terminal=bgalpha=128",

-- a hidden model that only gets activated on client
-- connect/disconnect and uses side by side
--"layers/layer_fg/add_model/rectangle=sbsvid",
--"layers/layer_fg/models/sbsvid/connpoint/reveal=sbsvid",
--"layers/layer_fg/models/sbsvid/stereoscopic=sbs"
};
