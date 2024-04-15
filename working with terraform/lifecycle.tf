resource "local_file" "file" {
    filename = "locadoc.txt"
    content = "This is a local file."
    file_permission = "0700"

    lifecycle {
    #   prevent_destroy = true
    ignore_changes = [ file_permission ]
    create_before_destroy = true
    }
}