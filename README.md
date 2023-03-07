# Mobi Documentation
This documentation is generated using [Asciidoctor](http://asciidoctor.org/) and GitHub Actions to create a GitHub Pages site. For syntax details, refer to Asciidoctor's [Writer's Guide](http://asciidoctor.org/docs/asciidoc-writers-guide/). For more in-depth details, see Asciidoctor's [User Manual](http://asciidoctor.org/docs/user-manual/).

## Build Instructions
### Install Asciidoctor
Follow the [official instructions](https://docs.asciidoctor.org/asciidoctor/latest/install/) to install the Asciidoctor Ruby gem on your machine. This is required to build.

### Build the Documentation
To build the documentation from the Asciidoc files, simply run `make` in the root of the project. The output is two `index.html` files: one under `latest` and one under `release-notes`. The full documentation site should be served from the `index.html` file in the root of the project.