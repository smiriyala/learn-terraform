
output "vcn_cidr" {
  description = "CIDR block of the core VCN"
  value       = oci_core_vcn.internal.cidr_block
}

output "vcn_state" {

    description = "the state of Vcn"
    value = oci_core_vcn.internal.state
  
}