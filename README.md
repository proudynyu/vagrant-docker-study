# How to use
## Vagrant

This repository is using vagrant to setup the VM for using docker to get more freedom in how the VM should behave and what kind of config it will have.

## Docker

This repo has a docker running serving a very simple static site provided in `/configs/src`.

For this to work, was used the module `express`.

There is a `Dockerfile` in `/configs/src` for the creation of the docker image.

## Commands

Once you have `vagrant` installed in your machine, you can execute the following command:

- `vagrant up` and wait for the VM boot it up

