local function run(msg, matches)

local signup = "*Your Don't Have an Account!*"
  local user = msg.from.id
   local checkuser = io.popen("less Text/Users/"..user.."/.check"):read('*all')
  
 if not checkuser == "user="..msg.from.id then
          send_api_msg(msg, get_receiver_api(msg), singup, true, 'md')
    end
    local user2 = msg.from.id
    local error = "You Don't Have This Text"
    local checkerror = io.popen("less Text/Users/"..user3.."/"..matches[1]..".txt"):read('*all')
         if not checkerror == "(.*)" then
         send_api_msg(msg, get_receiver_api(msg), error, true, 'md')
    local user3 = msg.from.id
local show = io.popen("less Text/Users/"..user3.."/"..matches[1]..".txt"):read('*all')
  local showtext = "_"..matches[1].."_: \n"..show
  send_api_msg(msg, get_receiver_api(msg), showtext, true, 'md')
end
  end
return {
  patterns = {
    '^/show (.*)$'
  },
  run = run,
  moderated = true
}
