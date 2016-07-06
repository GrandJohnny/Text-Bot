local function do_keyboard_buygroup()
    local keyboard = {}
    keyboard.inline_keyboard = {
    {
                {text = 'MrJacki', url = 'http://telegram.me/MrJacki'},
      },
    {
                {text = 'PrivateBot', url = 'http://telegram.me/MrJackiRobot'},
      },
    }
    return keyboard
end
local function run(msg,matches)
local keyboard = do_keyboard_buygroup()
 send_api_keyboard(msg, get_receiver_api(msg), 'This Robot Created By MrJacki', keyboard)
end
return {
patterns = {
"/creator"
},
run = run,
}
