
policy_name          = "Myalert"
alert_conditions = {
  condition1 = {
    type                         = "static"
    condition_name               = "Condition 1"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    threshold                    = 3
    duration_minutes             = 10
    query                        ="SELECT percentage(count(*), WHERE error IS true) FROM Transaction WHERE appName = 'mmt-blog'"
    api_key                     ="NRAK-D2XG7XHTHPV4DJA0050ZK4J4I1E"
  },
  condition2 = {
    type                         = "static"
    condition_name               = "Condition 2"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    threshold                    = 2
    duration_minutes             = 5
    query                        ="SELECT average(duration) FROM Transaction WHERE appName='mmt-blog'"
    api_key                     ="NRAK-D2XG7XHTHPV4DJA0050ZK4J4I1E"
  }
  condition3 = {
    type                         = "static"
    condition_name               = "Condition 3"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    threshold                    = 2
    duration_minutes             = 5
    query                        = "SELECT count(error) FROM Transaction WHERE appName='mmt-blog'"
    api_key                     ="NRAK-D2XG7XHTHPV4DJA0050ZK4J4I1E"
  }
  condition4 = {
    type                         = "static"
    condition_name               = "Condition 4"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    threshold                    = 1
    duration_minutes             = 5
    query                        = "SELECT uniqueCount(session) FROM PageView FACET city, countryCode"
     api_key                     ="NRAK-D2XG7XHTHPV4DJA0050ZK4J4I1E"
  }
  condition5 = {
    type                         = "static"
    condition_name               = "Condition 5"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    threshold                    = 1
    duration_minutes             = 4
    query                        = "SELECT count(*) FROM Transaction WHERE appName='mmt-blog'"
    api_key                     ="NRAK-D2XG7XHTHPV4DJA0050ZK4J4I1E"
  }
#  api_key                     ="NRAK-D2XG7XHTHPV4DJA0050ZK4J4I1E"
#  account_id                  = 4438271 
  


}  
newrelic_service_level = {
  ServiceL1 = {
    name              = "My react-app SL"
    description       = "servicelevel1 on mmt-blog"
    guid                ="NDQzODI3MXxCUk9XU0VSfEFQUExJQ0FUSU9OfDExMzQ0ODg1Nzg"
    from                 ="pageview"
    where                ="appName = 'react-cart'"
    target               = 20
    count                = 1
  }
 ServiceL2= {
    name              = "mmt blog SL"
    description       = "servicelevel1 on mmt-blog"
    guid                ="NDQzODI3MXxTWU5USHxNT05JVE9SfDM2NWI1MjBjLTZlNDItNDkxMi1hODYxLTRkZjE3NjU0N2UwOA"
    from                 ="SyntheticCheck"
    where                ="Monitorname = 'test'"
    target              =10
    count               = 28
  }
   ServiceL3= {
    name              = "Synthetic SL"
    description       = "servicelevel1 on mmt-blog"
    guid                ="NDQzODI3MXxTWU5USHxNT05JVE9SfGFjZjBlMDg0LTVkYWQtNDBmMi04YWUzLTIzMWUxZTIyMzc2MA"
    from                 ="SyntheticRequest"
    where                ="monitorname = 'performancecheck'"
    target                = 20
    count                  =28

}
ServiceL4= {
    name              = "Synthetic2 SL"
    description       = "servicelevel1 on mmt-blog"
    guid                ="NDQzODI3MXxBUE18QVBQTElDQVRJT058MTAwNzQxMjAwOQ"
    from                 ="Transaction"
    where                ="appName = 'mmt-blog'"
    target                = 30
    count               = 7

}
level5= {
    name              = "Host SL"
    description       = "servicelevel1 on Desktop"
    guid                ="NDQzODI3MXxJTkZSQXxOQXwzNjY2NTY3NzQwNjg5MjAwMjA3"
    from                 ="ProcessSample"
    where                ="hostName = 'DESKTOP-I81T6G5'"
    target               = 10
    count                 =7

}
}