
##==============Varibles==============
variable "d1" {
    default = 5

}

#access single variable in resource block
resource "null_resource" "NoResource" {

    count = var.d1
  
}

##==============List varibles==============
variable "d2list" {
    default = ["apple", "banana", 3, 4]
  
}

#access list variable in resources
resource "null_resource" "NoResourceMap" {
    #as many counts, resource block get executed those many times. 
    count = length(var.d2list)
}

#==============map varibles==============
variable "d3map" {
    default = {
        fruit = {
            name = "apple"
            count = 3
        }
        vegitable ={
            name = "carrot"
            count = 5
        }
    }
  
}

#access in resources
resource "null_resource" "mapvaraible" {

    #for each to be use
    for_each = var.d3map

}