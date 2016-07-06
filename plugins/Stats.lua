local function run(msg, matches)

  local addacc = io.popen("less Text/Stats/AddAcc.txt"):read('*all')
   local delacc = io.popen("less Text/Stats/DelAcc.txt"):read('*all')
       local add = io.popen("less Text/Stats/Add.txt"):read('*all')
        local del = io.popen("less Text/Stats/Del.txt"):read('*all')
        local stats = "Robot Stats:\n\n--_Joined Users_: "..addacc.."\n--*Deleted Users*: "..delacc."\n--_Added Texts_: "..add.."\n--*Removed Texts*: "..del
    if matches[1] == "/stats" and is_sudo(msg) then
    send_api_msg(msg, get_receiver_api(msg), stats, true, 'md')
       
       end
  end
return {
  patterns = {
    '^(/stats)$'
  },
  run = run,
  moderated = true
}
