do

function run(msg, matches)
  local help = [[ *Help Text* ]]
send_api_msg(msg, get_receiver_api(msg), help, true, 'md')
end
return {
  description = "Shows Bot Help Text", 
  usage = "/help: Shows Bot Help Text",
  patterns = {
    "^/help$",
  }, 
  run = run 
}

end
