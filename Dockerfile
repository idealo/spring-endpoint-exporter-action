FROM ghcr.io/idealo/spring-endpoint-exporter:1.0.25-native

# From the docs: Ensure your Dockerfile does not set the USER instruction, otherwise you will not be able to access GITHUB_WORKSPACE.
# See for details: https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners#docker-container-filesystem
USER root
