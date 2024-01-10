variable "nested_list" {​

  type    = list(list(string))​

  default = [["a", "b"], ["c", "d"], ["e", "f"]]​

}​

variable "nested_map" {​

  type    = map(map(string))​

  default = {​

    group1 = {"name" = "Alice", "age" = "25"}​

    group2 = {"name" = "Bob", "age" = "30"}​

  }​

}​

locals{​

flattened_map  = flatten([for k, v in var.nested_map : [for kk, vv in v : { group = k, key = kk, value = vv }]])​

}   ​

output "flattened_list_result" {​

  value = local.flattened_list​

}​
