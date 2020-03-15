class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'webserver1.lsst.org': }
  dockeragent::node { 'puppetmasterpo.lsst.org': }
}
