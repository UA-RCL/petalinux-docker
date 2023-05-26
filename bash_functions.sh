peta-docker() {
  VERSION=$1
  other_args=$(echo "${@:2}" | tr -d '"')
  
  sudo docker run --rm -it --volume /:/host-fs --workdir /host-fs/$(pwd) --network host petalinux:${VERSION} /bin/bash -i -c "${other_args}"
}

peta-docker-interactive() {
  VERSION=$1
  
  sudo docker run --rm -it --volume /:/host-fs --workdir /host-fs/$(pwd) --network host petalinux:${VERSION} /bin/bash
}
