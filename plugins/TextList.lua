local function run(msg, matches)

local signup = "*Your Don't Have an Account!*"
  
  local user = msg.from.id
  
  local checkuser = io.popen("less Text/Users/"..user.."/.check"):read('*all')
  
 if not checkuser == "user="..msg.from.id then
          send_api_msg(msg, get_receiver_api(msg), singup, true, 'md')
    end
 local user2 = msg.from.id
  local list = io.popen("cd Text && cd Users && cd "..user2.." && ls):read('*all')
   local textlist = "Your Saved Texts: \n"..list.."\n *!!NOTE!! .check is Your Information File !!NOTE!!* \n *Please Don't Remove it*"
    send_api_msg(msg, get_receiver_api(msg), textlist, true, 'md')
       
       end
  end
return {
  patterns = {
    '^/textlist$'
  },
  run = run,
  moderated = true
}
