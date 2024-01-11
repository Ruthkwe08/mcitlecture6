variable "nested_map"{
type =map(map(string))
default={
group1={"name"="Alice","age"="25"}
group2={"name"="Bob","age"="30"}
  }
}
locals{
flattened_map = flatten{[for index, character in var.nested_map:[for kk, vv in v: {group=k, key, value=vv}]]
}

output"flattened_map_result"{
  value=local.flattened_map
}
