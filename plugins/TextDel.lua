local function run(msg, matches)

local signup = "*You Don't Have an Account!*"
  local user = msg.from.id
   local checkuser = io.popen("less Text/Users/"..user.."/.check"):read('*all')
  
 if not checkuser == "user="..msg.from.id then
          send_api_msg(msg, get_receiver_api(msg), singup, true, 'md')
    end
    local user3 = msg.from.id
    local error = "This Text is not Available"
    local checkerror = io.popen("less Text/Users/"..user3.."/"..matches[1]..".txt"):read('*all')
         if not checkerror == "(.*)" then
         send_api_msg(msg, get_receiver_api(msg), error, true, 'md')
       end
       local user2 = msg.from.id
local del = io.popen("cd Text && cd Users && cd "..user2.." && rm -rf "..matches[1]..".txt"):read('*all')
   send_api_msg(msg, get_receiver_api(msg), del, true, 'md')
 end
 local deleted = matches[1].." Has Been Deleted!"
    send_api_msg(msg, get_receiver_api(msg), deleted, true, 'md')
end
   local stats = io.popen("less Text/Stats/Del.txt"):read('*all')
    local calclog = stats+1
     local text = calclog
      local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  local file = io.open("./Text/Stats/Del.txt", "w")
  file:write(text)
  file:flush()
  file:close()
end
  end
return {
  patterns = {
    '^/rem (.*)$'
  },
  run = run,
  moderated = true
}
