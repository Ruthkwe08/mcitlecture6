variable "simple_nested_list" {
type = list(list(string))
default = [["a", "b"], ["c", "d"], ["e", "f"]]
}
locals{
simple_local_flattened_list = flatten(var.simple_nested_list)
}
output "simple_flattened_list_result"{
value = local.simple_local_flattened_list
}
