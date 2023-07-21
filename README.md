# petalinux-docker

## Usage

- Download a [petalinux installer](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools.html)
- Copy it to this folder
- The container has a few key [build arguments](https://github.com/UA-RCL/petalinux-docker/blob/7c37f855bc746956aa539667a8a7aae4c15400f3/Dockerfile#L69-L72):
  - `PETA_VERSION`: the version of Petalinux you're installing in this container
  - `PETA_RUN_FILE`: the installer you've downloaded
  - `USER_ID`: the user id of your container user account. Set this to `id -u` of your regular user account to make all files inside the container owned by this user outside of the container
  - `GROUP_ID`: the group id of your container user account. Set this to `id -g` of your regular user account to make all the files inside the container owned by this group outside of the container
- Build the container with, i.e.

```bash
sudo docker build --build-arg PETA_VERSION=2020.2 --build-arg PETA_RUN_FILE=petalinux-v2020.2-final-installer.run --build-arg USER_ID=`id -u` --build-arg GROUP_ID=`id -g` --tag petalinux:2020.2 .
```

- After the build is complete, you can just launch it with `docker run`. Some example helper functions are provided in [bash_functions.sh](https://github.com/UA-RCL/petalinux-docker/blob/master/bash_functions.sh)
