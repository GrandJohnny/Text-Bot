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
  local deleted = matches[1].." Has Been Deleted!"
   send_api_msg(msg, get_receiver_api(msg), del, true, 'md')
    send_api_msg(msg, get_receiver_api(msg), deleted, true, 'md')
end
  end
return {
  patterns = {
    '^/rem (.*)$'
  },
  run = run,
  moderated = true
}
