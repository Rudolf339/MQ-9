# turn off hud in views
setlistener("/sim/current-view/view-number-raw", func(n) {
    var view = n.getValue();
    if (view == 0 or view == 100) {
	setprop("/sim/hud/visibility[1]", 1);
    } else {
	setprop("/sim/hud/visibility[1]", 0);
    }
},1);

#var fast_loop = func {
#  var viewName = getprop("/sim/current-view/name"); 
#    if (viewName == "Sensor View") {
#        setprop("aircraft/flir/target/view-enabled", viewName == "Sensor Vew");
#        setprop("sim/rendering/als-filters/use-filtering", 1);
#        setprop("sim/rendering/als-filters/use-IR-vision", 1);
#        setprop("sim/rendering/als-filters/use-night-vision", 1);
#        }
#}
