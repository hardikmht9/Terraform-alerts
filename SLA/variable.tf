variable "newrelic_service_level" {
    type=map(object({
        name= string
        description= string
        guid = string
        from= string
        where= string
        target= number
        count=number
        
    }))
  
}


