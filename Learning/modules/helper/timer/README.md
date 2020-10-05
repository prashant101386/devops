# Helper - Timer  
---  
### Description:  
- A value is provided to the timer, the timer will wait (based on the configured time) before passing the value to another resource. This gives the ability to stall the deployment of a resource in there is a dependency requirement. 

### Required Variables:  
 resource        = "string"  
 wait_in_seconds = "string"  
  
### Outputs:  
 resource

### Reference Links:  

#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/time/r/sleep.html  