# Docker image with AWS CLI and Docker client binaries
Based on Alpine Linux.

Find the latest image in Docker Hub: https://hub.docker.com/r/releaseworks/awsdockercli

## Usage
```
docker run -it -v /var/run/docker.sock:/var/run/docker.sock releaseworks/awsdockercli sh
```

Supply access credentials as environment variables:
```
docker run -it -e AWS_ACCESS_KEY_ID=XXX \
	-e AWS_SECRET_ACCESS_KEY=YYY \
	-e AWS_DEFAULT_REGION=eu-west-1 \
	-v /var/run/docker.sock:/var/run/docker.sock \
	releaseworks/awsdockercli sh
```

Use in a Jenkinsfile: https://github.com/releaseworks/jenkinslib

See also: https://github.com/releaseworks/awscli

## Contributing
Please open a pull request.

