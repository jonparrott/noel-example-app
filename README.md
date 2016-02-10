# Noel Example App

This is a simple Python app that can easily be deployed to [Noel](https://github.com/jonparrott/noel). See the Noel documentation for more details.

## Deploying locally

Use `noel build-and-deploy`.

## Deploying remotely

Use:

    noel add-git-remote
    git push noel master

## What is it?

It's just a simple Python/Flask application. It uses a straightforward Dockerfile to run gunicorn to serve the application

# Disclaimer

This is not an official Google product, experimental or otherwise. It's just code that happens to be owned by Google. This is for education purposes, it's not intended to be production-ready.

# Contributing changes

See [CONTRIBUTING.md](CONTRIBUTING.md). Contributions are more than welcome, but remember, Noel is intended to be simple and educational.

# Licensing

Noel is made available under the Apache License, Version 2.0. See [LICENSE](LICENSE).
