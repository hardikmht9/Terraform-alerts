terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

provider "newrelic" {
  account_id        = var.account_id
  api_key = var.api_key
  region = "US"                        
}



module "alert_policy" {
  source      = "./Policy"
  policy_name = var.policy_name
  policy_count = 1  
  account_id = var.account_id
  api_key = var.api_key
}

module "nrql_alert_condition" {
  source           = "./condition"
  account_id        = var.account_id
  api_key           =  var.api_key
  policy_id        = module.alert_policy.alert_policy_id[0]
  
  
  alert_conditions  =var.alert_conditions
  
}

module "service_level" {
  source      = "./SLA"
  newrelic_service_level= var.newrelic_service_level
}
 
