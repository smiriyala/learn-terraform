variable "listPrefix" {
  type    = list(any)
  default = ["Mr", "Mrs", "Sir"]
}

variable "mapPrefix" {
  type = map(any)
  default = {
    "title"     = "Mr"
    "firstname" = "subbu"
    "lastname"  = "miriyala"
  }
}


variable "setPrefix" {
  default = ["Mr", "Subbu", "Miriyala"]
  type    = set(string)
}

##Objects Variable
variable "subbu" {
  type = object({
    name    = string
    color   = string
    age     = number
    food    = list(string)
    fav_pet = bool
  })

  default = {
    name    = "subbu"
    color   = "blue"
    age     = 7
    food    = ["fish", "chicken", "corn"]
    fav_pet = true
  }
}

#tuple
variable "tuplekitty" {
  type    = tuple([string, number, bool])
  default = ["subbu", 21, true]
}


variable "filename" {
  type = set(string)
  default = [
    "/Users/admin/Documents/allrepos/learn-terraform/practicalTask/pets.txt",
    "/Users/admin/Documents/allrepos/learn-terraform/practicalTask/dogs.txt",
    "/Users/admin/Documents/allrepos/learn-terraform/practicalTask/catx.txt"
  ]
  
}