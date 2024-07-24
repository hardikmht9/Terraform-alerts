
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
  }
}  
