# How to use
## Vagrant

This repository is using vagrant to setup the VM for using docker to get more freedom in how the VM should behave and what kind of config it will have.

## Docker

This repo has a docker running serving a very simple static site provided in `/configs/src`.

For this to work, was used the module `express`.

## Commands

Once you have `vagrant` installed in your machine, you can execute the following command:

- `vagrant up` and wait for the magic happens

If the docker container does not goes up, you can try to go to `/configs/src` with *node* installed and use the command `npm install` and reset the provision in the machine with `vagrant provision`
