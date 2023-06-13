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
#Export variables to environement variable and use them in terraform
#this values can be set during terraform execution, set in 
###############################################################COMMANDexport TF_VAR_cli="Iam from shell environemt"
#This value will be called while terraform apply. 

#=========================
#list variable


#=================================variable precendence=========================
## Variable Prescedencies.
#NOTEs: -var= , -var-file=, *.auto.tfvars, terraform.tfvars, SHELL,ENV THEN finally ASK User for varaible value. 


#list
variable "sample6" {
  default = [
    "hello", 1000, true, "world"
  ]
}

variable "sample7" {
  default = {
    string = "hello", 
    number = 1000, 
    bool = true, 
    string = "world"
  }
}

##Access all above sample variables, LIST, MAP
output "alltype" {
  value = "variable sample5 - ${var.sample5}, First value in the list - ${var.sample6[0]}, Boolean value of  Map - ${var.sample7[bool]}"
  
}
#================Map variable

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