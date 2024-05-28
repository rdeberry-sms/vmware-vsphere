resource "htpasswd_password" "user" {
  password = random_password.user_passwd.result
  salt     = random_password.user_salt.result
}

resource "random_password" "user_salt" {
  length = 8
}

resource "random_password" "user_passwd" {
  length  = 16
  special = true
  upper   = true
  lower   = true
}


resource "htpasswd_password" "root" {
  password = random_password.root_passwd.result
  salt     = random_password.root_salt.result
}

resource "random_password" "root_passwd" {
  length      = 16
  upper       = true
  lower       = true
  special     = true
  numeric     = true
  min_lower   = 2
  min_upper   = 2
  min_special = 2
  min_numeric = 2
}

resource "random_password" "root_salt" {
  length = 8
}
