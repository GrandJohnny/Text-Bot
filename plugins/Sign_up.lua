local function run(msg, matches)
  
  local signin = "*You Have an Account!*"
  local user = msg.from.id
  local checkuser = io.popen("less Text/Users/"..user.."/.check"):read('*all')
  
 if checkuser == "user="..msg.from.id then
    send_api_msg(msg, get_receiver_api(msg), singin, true, 'md')
    
end

local text = "user="..msg.from.id
  local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  local userf = msg.from.id
  local adduser = "*Your Account Has Been Created!*"
  local file = io.open("./Text/Users/"..userf.."/.check", "w")
  file:write(text)
  file:flush()
  file:close()
  send_api_msg(msg, get_receiver_api(msg), adduser, true, 'md')
  end
   local stats = io.popen("less Text/Stats/DelAcc.txt"):read('*all')
    local calclog = stats+1
     local text = calclog
      local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  local file = io.open("./Text/Stats/AddAcc.txt", "w")
  file:write(text)
  file:flush()
  file:close()
end
 end 
      
return {
  patterns = {
    "^/sign_up",
  }, 
  run = run 
}
