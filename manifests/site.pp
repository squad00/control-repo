node puppet.local {
  include role::master
}
node 'ip-10-0-1-47.ec2.internal' {
  notify { 'this is the puppet master': }
}
node default {
  notify { 'this node did not match any of the listed definitions': }
}
