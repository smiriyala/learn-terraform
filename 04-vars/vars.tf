variable "sample" {
  default = "Hellow world"
}

output "sample" {
    value = var.sample
}

#====================global variable================
#variable declarated irrespective of global variable without value
variable "firstglobalvariable" {
}

#read value of global variable using variable name same.
# firstblobalvariable is haivng in both .tfvars and auto.tfvars files but it takes precedecence of auto.tfvars
# than .tfvars files
output "firstglobalvariable" {
 value = var.firstglobalvariable
}

#=============variable cli ================

#declare variable type clie
variable "cli" {
  
}
#define output and output value is var.cli
# need to provide variable value dynamically in script, terraform apply  -var cli="variableValue"
output "cli" {
  value = var.cli
}

#======shell form=======
#declare


#=========================
#list variable

variable "d1lsit" {
    default = [ 
        {
        course_name = "aws"
        trainer_name = "raju"
        },
        {
         course_name = "devops"
         trainer_name = "ravi"
        }
    ]
  
}

#multiple values print from list
output "d1lsit_output" {
    value = [ var.d1lsit.*.course_name, var.d1lsit.*.trainer_name]
}


#================Map variable