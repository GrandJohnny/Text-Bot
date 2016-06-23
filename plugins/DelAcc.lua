local function run(msg, matches)

local signup = "*You Don't Have an Account!*"
  local user = msg.from.id
   local checkuser = io.popen("less Text/Users/"..user.."/.check"):read('*all')
   
 if not checkuser == "user="..msg.from.id then
          send_api_msg(msg, get_receiver_api(msg), singup, true, 'md')
    end
    local full = "_Are You Sure To Sign Out?_ \n *If You Sure Send:* Yes, I am sure to sing out and delete my account.\n "
if matches[1] == "out" then
  send_api_msg(msg, get_receiver_api(msg), full, true, 'md')
end
local user2 = msg.from.id
 local full2 = "Your Account Has Been Deleted."
  local deluser = io.popen("cd Text && cd Users rm -rf "..user2):read('*all')
   local full3 = deluser.."_Done!_ \n"..full2
if matches[1] == "account" then
  send_api_msg(msg, get_receiver_api(msg), full3, true, 'md') 
end
end
return {
  patterns = {
    "^/sign_(out)$"
    "^Yes, I am sure to sing out and delete my (account).$"
  },
  run = run,
  moderated = true
}
