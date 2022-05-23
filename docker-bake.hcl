group "default" {
  targets = ["builder", "devel"]
}

// For docker/metadata-action
target "docker-metadata-action-builder" {}
target "docker-metadata-action-devel" {}

target "builder" {
  inherits = ["docker-metadata-action-builder"]
  dockerfile = "Dockerfile"
  target = "builder"
}

target "devel" {
  inherits = ["docker-metadata-action-devel"]
  dockerfile = "Dockerfile"
  target = "devel"
}
