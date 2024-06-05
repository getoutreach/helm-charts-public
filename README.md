# Helm Charts

This repository stores helm charts that can be fetched via Github pages. This is primarily used to mirror other chart repositories.

## Adding a New Chart

 1. Fetch a chart from the repository that you wish to mirror.
 2. Store it as a `.tgz` file in the repository.
 3. Run `./scripts/update-index.sh`
 4. Create a PR and merge it.


### RabbitMQ

E.g. to get a new version of RabbitMQ

1. get chart: `gh repo clone bitnami/charts`
2. `cd charts/bitnami && helm package -u charts/bitnami/rabbitmq`
3. ./scripts/update-index.sh


## License

Apache-2.0

