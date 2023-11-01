# 🐈 `docker-pounce`

[pounce](https://git.causal.agency/pounce/), the IRC bouncer, but Dockerised

## Usage

Running `docker-pounce` requires that the `USER` environment variable be set.

A Docker volume must be set pointing to `/root/.config/pounce` within the
container. The volume must contain a configuration file for `pounce` named
`default`, along with all files referenced within said configuration file.

All file references must be proceeded by `/root/.config/pounce`.
