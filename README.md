# Cloud configuration

Contains ansible playbooks, step-by-step instructions for cloud setup,
and helm charts.

## Helm charts

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/twomartens)](https://artifacthub.io/packages/search?repo=twomartens)

The helm charts use symlinks to utilise a central collection of templates
that is used for every chart. The values.yaml is symlinked into the 
directory of each chart as default_values.yaml. Each chart has
an overwrite_values.yaml file which specifies the values for that
particular chart and overwrites the values from default_values.yaml.

Before the chart can be installed locally for testing or is built
for publishing, the actual values.yaml for Helm needs to be created 
(paths are specified from root of repository):

```shell
cd helm/chart/
yq '. *= load("overwrite_values.yaml")' default_values.yaml > values.yaml
```

Furthermore, each chart has an environments directory which contains
a values file with the name of the environment (e.g. production.yaml).
These values are not bundled into the chart on construction but rather
supplied when installing the chart.
