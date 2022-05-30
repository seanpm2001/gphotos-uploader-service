# gphotos-uploader-service

## Usage

```
docker run -d \
    --name=gphotos \
    -v <PATH_TO_CONFIG_DIR>:/config.hjson \
    -v <PATH_TO_PHOTOS_LIBRARY>:/photos \
    --restart unless-stopped \
    zauberzeug/gphotos-uploader-service
```