class role::master_server {
  include role::master
  include profile::hieradata::base
#  include profile::hieradata::agent_nodes
}
