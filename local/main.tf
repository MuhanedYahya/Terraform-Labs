# resource "local_file" "file" {
#     filename = "locadoc.txt"
#     content = "This is a local file."
# }


resource "local_sensitive_file" "file" {
    filename = "locadoc.txt"
    content = "This is a local file."
}