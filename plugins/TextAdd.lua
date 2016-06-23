local function run(msg, matches)

local signup = "*Your Don't Have an Account!*"
  local user = msg.from.id
   local checkuser = io.popen("less Text/Users/"..user.."/.check"):read('*all')
  
 if not checkuser == "user="..msg.from.id then
          send_api_msg(msg, get_receiver_api(msg), singup, true, 'md')
    end
    local err == "_You Can't Set Format!_"
    if matches[1] == "(.*).(.*)" then
      send_api_msg(msg, get_receiver_api(msg), err, true, 'md')
      end
    local text = matches[2]
  local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  local done = "*New Text Has Been Added*"
  local user2 = msg.from.id
  local name = matches[1]
  local file = io.open("./Text/Users/"..user2.."/"..name..".txt", "w")
  file:write(text)
  file:flush()
  file:close()
  send_api_msg(msg, get_receiver_api(msg), done, true, 'md') 
end
end 
return {
  patterns = {
    "^/add  (.*) +(.+)$"
  },
  run = run
}
