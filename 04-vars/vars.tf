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
#declar