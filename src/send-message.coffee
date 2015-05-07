request = require 'request'

options =
  url    : "https://securityinnovation.slack.com/services/hooks/slackbot?token=#{process.env.slack_token}&channel=%23tm-deploy"
  body   : '[tm-ci-workflow] ' + process.argv[2]

request.post options, (error, response, data)->
  console.log  error if error