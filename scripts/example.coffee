# Description:
#   Example scripts for you to examine and try out.

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"
