# rctf / rcds testing

This is the repo showcasing the structure needed in order to setup Itemize's forked rcds and rctf.

## Structure

The folder structure for pushing the challenges to the rCTF platform is `<category>/<challenge>`.

All the challenges contains a `challenge.yaml`, this contains the challenge title, description along with the flag and author, and if there are any running services.

## Deployment of services

Deploying the challenges through rCDS will, however, not deploy the services but only the challenge description and it's files.

Therefore a deploy script is found at the root folder so that the repository could be cloned in a challenge VM and then ran in order to deploy the services.

Note that one has to manually make sure that the description of the challenges points to the correct ip and port the challenge is deployed to.

## Example usage

1. Push challenges to rCTF platform

```
$ docker-compose up
```

2. Deploy services to challenge VM

```
$ ssh [challenge-vm]
$ git clone [challenge-repo]
$ cd [challenge-repo]
$ bash deploy.sh
```
