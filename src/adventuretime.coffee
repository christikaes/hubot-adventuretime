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
mitto = require 'mitto'
config = mitto.loadConfig('adventuretime.config')

module.exports = (robot) ->
  count = robot.brain.get 'messageCount'
  if !count then robot.brain.set 'messageCount', 0
  # Add response when hearing corresponding font
  addResponse = (d) ->
    regexTemplate = '.*\\b' + d.prompt.join('\\b|\\b') + '\\b.*'
    regex = new RegExp regexTemplate, 'i'
    robot.hear regex, (msg) ->
      count = robot.brain.get 'messageCount'
      count++;
      if count >= config.messageThreshold
       robot.brain.set 'messageCount', 0
       msg.send msg.random d.response

  for d in data
    addResponse(d)
