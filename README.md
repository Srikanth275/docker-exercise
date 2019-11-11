# Adding a Dockerfile to a Python App

## The Problem

Create a Dockerfile that runs the included python application on port 3000
and with the environment variable `ENVIRONMENT=prod`.

## The App

A simple python3 API that only responds at `/`. It returns the value
of the `ENVIRONMENT` environment var as JSON.

### Installing Dependencies

Use `pip` to install the requirements listed in `requirements.txt`:

`pip install -r requirements.txt`

### Running the server

The server requires one command line argument: the port that it should
listen on.

`python app.py <PORT>`

## Useful Links

* [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)
