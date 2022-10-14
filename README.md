# Spring Endpoint Exporter Action

This action allows you to use the [spring-endpoint-exporter](https://github.com/idealo/spring-endpoint-exporter) in you github
workflows.

## How to use the action?

```yaml
- name: Export Spring Endpoints
  uses: idealo/spring-endpoint-exporter-action@v0.1.11
  with:
    jar-path: ./target/app.jar
    output-path: ./out.json
    include-filters: de.idealo.*
```

## Required Inputs

| Name              | Description                                                     |
|-------------------|-----------------------------------------------------------------|
| `jar-path`        | The jar to export all request mappings from                     |
| `output-path`     | Where to output the result of the exporter                      |
| `include-filters` | A set of packages to include when scanning for request mappings |

## Optional Inputs

| Name              | Description                                                     |
|-------------------|-----------------------------------------------------------------|
| `exclude-filters` | A set of packages to exclude when scanning for request mappings |
