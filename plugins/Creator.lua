do

function run(msg, matches)
  local text = [[ *This Robot is Created By* [MrJacki](http://telegrame/MrJacki) *!* ]]
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
  description = "Shows Bot Creator", 
  usage = "/creator: Shows Bot Creator",
  patterns = {
    "^/creator$",
  }, 
  run = run 
}

end
