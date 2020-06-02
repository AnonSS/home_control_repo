---
version: 5
defaults:
  data_hash: "yaml_data"
hierarchy:
  - name: "private hiera"
    datadir: "/etc/puppetlabs/code/hieradata/private/%{environment}"
    paths:
      - "node/%{fqdn}.yaml"
      - "site/%{site}/cluster/%{cluster}/role/%{role}.yaml"
      - "site/%{site}/cluster/%{cluster}.yaml"
      - "cluster/%{cluster}/role/%{role}.yaml"
      - "cluster/%{cluster}.yaml"
      - "site/%{site}/role/%{role}.yaml"
      - "site/%{site}.yaml"
      - "org/%{org}/role/%{role}.yaml"
      - "role/%{role}.yaml"
      - "org/%{org}.yaml"
  - name: "public hiera"
    datadir: "/etc/puppetlabs/code/environments/%{environment}/hieradata"
    paths:
      - "node/%{fqdn}.yaml"
      - "site/%{site}/cluster/%{cluster}/role/%{role}.yaml"
      - "site/%{site}/cluster/%{cluster}.yaml"
      - "cluster/%{cluster}/role/%{role}.yaml"
      - "cluster/%{cluster}.yaml"
      - "site/%{site}/role/%{role}.yaml"
      - "site/%{site}.yaml"
      - "org/%{org}/role/%{role}.yaml"
      - "role/%{role}.yaml"
      - "org/%{org}.yaml"
