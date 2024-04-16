# resource "local_file" "pet" {
#   filename = var.filename[count.index]
#   content = "My favorite pet is ${var.content[count.index]}"

#   count = length(var.filename)
# }


resource "local_file" "pet" {
  filename = each.value
  content = "My content"


  for_each = toset(var.filename)
}