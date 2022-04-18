docker run -d --name gitlab-runner --restart always \
    -v /mnt/dcimages/gitlab-runner/config:/etc/gitlab-runner \
    -v /var/run/docker.sock:/var/run/docker.sock \
    gitlab/gitlab-runner:latest