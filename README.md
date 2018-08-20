## Segger Embedded Studio Docker Image

Basic image to allos Segger Embedded Studio (SES) builds from Docker.

I am using this for continuous integration (CI) of SES projects.

The SES tools are installed into the image under `/ses`. For my purposes, I use `/ses/bin/emBuild`.

Example:

```docker run -it josschne/ses /ses/bin/emBuild```

Prints help information...


```docker run -it josschne/ses /ses/bin/emBuild -v <host source file path>:/src -config 'Release' /src/test-project.emProject```

Performs a build...