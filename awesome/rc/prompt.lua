local awful = require("awful")

function urlencode(str)
   if (str) then
      str = string.gsub (str, "\n", "\r\n")
      str = string.gsub (str, "([^%w ])",
         function (c) return string.format ("%%%02X", string.byte(c)) end)
      str = string.gsub (str, " ", "+")
   end
   return str    
end
globalkeys = awful.util.table.join(globalkeys, 
  awful.key({ modkey },            "t",     function ()
    local promptbox = mypromptbox[mouse.screen]
      awful.prompt.run(
        {prompt = "<span>Translate: </span>"},
        promptbox.widget,
        function (string)
          -- -new-window 
          local command = awful.util.spawn("firefox https://translate.google.com/#auto/en/" .. urlencode(string))
          -- local result = awful.util.spawn(command)
          -- if type(result) == "string" then
          --   promptbox.widget.text = result
          -- end
        end,
        awful.completion.shell,
        awful.util.getdir("cache") .. "/history")
  end),
  awful.key({ modkey },            "g",     function ()
    local promptbox = mypromptbox[mouse.screen]
      awful.prompt.run(
        {prompt = "<span>Search: </span>"},
        promptbox.widget,
        function (string)
          local command = awful.util.spawn("firefox https://duckduckgo.com/?q=" .. string)
          -- local result = awful.util.spawn(command)
          -- if type(result) == "string" then
          --   promptbox.widget.text = result
          -- end
        end,
        awful.completion.shell,
        awful.util.getdir("cache") .. "/history")
  end))