# wsl-docker-base
Docker image to create an Arch Linux WSL instance.

You can either configure a user as part of the image creation, or add one after importing into WSL.

Customize and build image from Dockerfile.


Then export as a tar file:
```
docker run -it --name wsldockerbase wsldockerbase
docker export -o wsldockerbase.tar wsldockerbase
```

Then import into WSL.

If planning to use WSL2, save a step by setting default to WSL2 first.

```
wsl.exe --set-default-version 2

wsl.exe --import myarch c:\data\myarch .\wsldockerbase.tar
```

