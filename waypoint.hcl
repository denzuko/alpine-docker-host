project = "image-factory-alpine-docker"

build {
  use "packer-docker" {
     template = "alpine-docker-host-x86_64.json"
  }
}
