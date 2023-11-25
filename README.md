# Docker image for jenkins-agents

## Build to docker hub

- add tag version of android
  `$ git tag -a v1.0.0 -m"release 1.0.0"`
- push to github and it will running using git action
  `git push github-gw HEAD --follow-tags`

## Dockerhub relase
`lanxic/docker-dind-aws-kubectl`