do

function run(msg, matches)
  local version = [[ *Version Text* ]]
send_api_msg(msg, get_receiver_api(msg), version, true, 'md')
end
return {
  description = "Shows Bot Version", 
  usage = "/version: Shows Bot Version",
  patterns = {
    "^/version$",
  }, 
  run = run 
}

end
