terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

provider "newrelic" {
  region = "US"   
  account_id = 4438271 
  api_key = "NRAK-D2XG7XHTHPV4DJA0050ZK4J4I1E"                
}

