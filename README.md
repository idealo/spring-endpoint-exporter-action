# Spring Endpoint Exporter Action

This action allows you to use the [spring-endpoint-exporter](https://github.com/idealo/spring-endpoint-exporter) in you github workflows.

## How to use the action?

```yaml
- name: Export Spring Endpoints
  uses: idealo/spring-endpoint-exporter-action@v0.1.11
  with:
    input-path: ./target/app.jar
    output-path: ./out.json
    include-filters: de.idealo.*
```

## Inputs

| Name              | Description                                                                         | Default value |
|-------------------|-------------------------------------------------------------------------------------|---------------|
| `scan-mode`       | The mode the exporter will operate in.                                              | `"JAR"`       |
| `input-path`      | The jar or directory with class files to scan and export all request mappings from. | `null`        |
| `output-path`     | Where to output the result of the exporter.                                         | `null`        |
| `include-filters` | A set of packages to include when scanning for request mappings.                    | `null`        |
| `exclude-filters` | A set of packages to exclude when scanning for request mappings.                    | `null`        |

## How to scan extracted jars or directories?

The action is able to search both jars and directories for class files and export all request mappings found.
To scan directories, set `scan-mode` to `FILE_SYSTEM` and make sure that `input-path` points to the desired directory.

```yaml
- name: Export Spring Endpoints
  uses: idealo/spring-endpoint-exporter-action@v0.1.11
  with:
    scan-mode: FILE_SYSTEM
    input-path: ./target/
    output-path: ./out.json
    include-filters: de.idealo.*
```
