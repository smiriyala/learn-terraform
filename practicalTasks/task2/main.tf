#access in resources
/* resource "null_resource" "mapvaraible" {

    #for each to be use
    test = var.prefix

} */

output "list_variable" {
  value = var.listPrefix
}

output "map_variable" {
  value = [var.mapPrefix.title, var.mapPrefix.firstname, var.mapPrefix.lastname]

}


output "setPrefix" {
  /* value = var.setPrefix */

  value = var.setPrefix

}



#Object access
output "subbuObject" {
  value = [var.subbu.name, var.subbu.food]

}

#tuble access
output "subbutuple" {
  value = var.tuplekitty[0]

}

/* ##create filename locally using foreach
resource "local_file" "pet" {
  filename_subbu = each.value
  for_each = var.filename_subbu
} */