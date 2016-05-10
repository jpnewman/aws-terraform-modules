resource "null_resource" "public_ip" {
  provisioner "local-exec" {
    command = "echo '{{var.timestamp}}'"
  }
}

output "ip" {
  value = "${var.public_ip}"
}

output "cidr" {
  value = "${format(\"%s/32\", var.public_ip)}"
}

