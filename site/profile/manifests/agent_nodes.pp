class profile::agent_nodes {
  include dockeragent
  node { 'webserver1.lsst.org': }
  node { 'puppetmasterpo.lsst.org': }
}
