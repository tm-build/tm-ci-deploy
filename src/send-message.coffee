require 'fluentnode'

console.log 'HERE'

url  = "https://securityinnovation.slack.com/services/hooks/slackbot?token=#{process.env.slack_token}%&channel=%23tm-deploy"
data = "[tm-ci-workflow] about to trigger azure deployment"
url.POST data, (response)->
  log response
  log 'all done'

#- curl --data "[tm-ci-workflow] about to trigger azure deployment" "https://securityinnovation.slack.com/services/hooks/slackbot?token=%SLACK_TOKEN%&channel=tm-deploy"
log "this is aaaa: #{process.env.aaaa}"