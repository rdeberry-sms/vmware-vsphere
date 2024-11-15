output "root_passwd" {
value = random_password.root_passwd.result
sensitive = true
}

output "user_passwd" {
value = random_password.user_passwd.result
sensitive = true
}
