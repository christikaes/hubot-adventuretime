# Description
#   A hubot script that adds Adventure Time GIFs on certain key words
#
# Configuration:
#   The prompt-response pairs are defined in data.json
#
# Commands:
#   XX - <returns adventure time GIF about XX>
#
# Notes:
#   you can change the prompt-response in the data file
#
# Author:
#   Christina[@ChrisBin]

data = require './data.json'

module.exports = (robot) ->
  # Add response when hearing corresponding font
  addResponse = (d) ->
    regexTemplate = d.prompt.join('|')
    regex = new RegExp regexTemplate, 'gi'
    robot.hear regex, (msg) ->
      msg.send msg.random d.response

  for d in data
    addResponse(d)