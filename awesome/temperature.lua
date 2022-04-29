local wibox = require("wibox")
local awful = require("awful")

local temprature = wibox.widget {
    widget = awful.widget.watch([[bash -c "cat /sys/devices/platform/coretemp.0/hwmon/hwmon3/temp1_input| awk '{print \" \" $1/1000 \"°C \"}'"]], 5),
}



local temprature_clr = wibox.widget.background()
temprature_clr:set_widget(temprature)
--temprature_clr:set_fg("#e5a75b")

return temprature_clr

