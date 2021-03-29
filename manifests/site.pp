node puppet.local {
  include role::master
}
node 'puppetserver.example.com' {
  notify { 'this is the puppet master': }
}
node default {
  notify { 'this node did not match any of the listed definitions': }
}
