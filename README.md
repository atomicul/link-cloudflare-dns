# Link Cloudflare DNS

Dynamic DNS Docker service to keep your domain name in sync with your IP address
* 🛠️ Reliable and Cross-Platform; Runs in a containerized environment
* 🔗 Supports both IPv4 and IPv6
* 📜 Comprehensive Logs
* 🥱 Easy install; Features an interactive script for a guided configuration

## Dependencies
* A Bash shell (if you want to use the install script)
    - On Windows machines, you can use WSL.
* Docker
    - If you get errors about permission accessing the daemon socket,
      try adding yourself to the `docker` group.
       ```bash
       sudo groupadd -f docker && sudo usermod -aG docker "$USER"
       ```
    - If using WSL, make sure to have 'WSL integration' enabled

## Installing
First, inspect the install script.
```bash
curl -Ls -o- 'https://atomicul.github.io/link-cloudflare-dns/install' | less
```
Then, run it with bash.
```bash
bash <(curl -Ls -o- 'https://atomicul.github.io/link-cloudflare-dns/install')
```
If you need multiple containers running in parallel, as you would if you had
multiple Cloudflare zones, you can specify the name of the container as the
first argument. In the prior example, the default name is `link-cloudflare-dns`.
```bash
bash <(curl -Ls -o- 'https://atomicul.github.io/link-cloudflare-dns/install') <CONTAINER_NAME>
```
## Disabling
If chosen to run as a service, the Docker container will start along with
the Docker daemon, which, in turn (in the most cases) starts with the
system. To stop the container, along with this behaviour, run:
```bash
docker stop <CONTAINER_NAME>
```

## Use without the installer
If you want to run the container directly, check out these example
compose files: `run-as-service.yml`, `run-once.yml`.

## Use without Docker
The main script used is `bin/link-domains`, it requires [yq](https://github.com/mikefarah/yq),
and you can find usage help by running:
```bash
bin/link-domains --help
```
