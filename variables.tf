variable "account_id" {
  description = "Account ID"
  type        = number
}

variable "api_key" {
  description = "API key"
  type        = string
}

variable "policy_name" {
  description = "Name of the policy"
  type        = string
}

variable "alert_conditions" {
  description = "Alert conditions"
  type = map(object({
    type                         = string
    condition_name               = string
    violation_time_limit_seconds = number
    fill_option                  = string
    fill_value                   = number
    aggregation_window           = number
    aggregation_method           = string
    aggregation_delay            = number
    expiration_duration          = number
    slide_by                     = number
    threshold                    = number
    duration_minutes             = number
    query                        = string
    api_key                      = string
  }))
}
variable "newrelic_service_level" {
    type=map(object({
        name= string
        description= string
        guid = string
        from= string
        where= string
        target= number
        count= number
        
    }))
  
}
