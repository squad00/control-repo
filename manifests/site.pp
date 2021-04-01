node 'ip-10-0-1-47.ec2.internal' {
  include role::master
  file {'/etc/secret_password.txt':
    ensure => file,
    content => lookup('secret_password'),
  }
}
