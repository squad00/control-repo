node 'ip-10-0-1-47.ec2.internal' {
  include role::master
  notify { 'this is the puppet master': }

}
