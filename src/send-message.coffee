require 'fluentnode'
request = require 'request'

console.log 'HERE'


#data = "[tm-ci-workflow] about to trigger azure deployment"
#'Content-Type': 'application/x-www-form-urlencoded'

options =
  url    : "https://securityinnovation.slack.com/services/hooks/slackbot?token=#{process.env.slack_token}%&channel=#tm-deploy"
#  headers:
  body   : '[tm-ci-workflow] about to trigger azure deployment'

request.post options, (error, response, data)->
  log error
  #log response
  log data
  log 'all done'
#url.POST data, (response)->
#  log response
#  log 'all done'

#- curl --data "[tm-ci-workflow] about to trigger azure deployment" "https://securityinnovation.slack.com/services/hooks/slackbot?token=%SLACK_TOKEN%&channel=tm-deploy"
log "this is aaaa: #{process.env.slack_token.substring(10)}"