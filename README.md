
# Pants Otel Reprex

This repository contains a minimal example of a build process that I would like to use. The build tool is [Pants](https://www.pantsbuild.org/).

## Expected outcome

When running this command:
```
./pants run apps:asciinator
```

This builds (an application)[./apps/src/asciinator], puts it into a docker image defined by [a dockerfile](./apps/dockerfiles/app.dockerfile), and runs a container based on this image.

I expected that the resulting application would emit telemetry, since it is running under `opentelemetry-instrument`. This is not the case, however. I am not sure what I need to do to get this working.
