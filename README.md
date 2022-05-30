# gphotos-uploader-service

## Usage

This docker image is intended to be used on headless servers.
Google Authentication is tricky. 
Please install [gphotos-uploader-cli](https://gphotosuploader.github.io/gphotos-uploader-cli/#/getting-started?id=install) locally on your computer and follow the setup instructions.
Make sure you use file authentification and provide a passphrase.

Then you can copy the created config folder to your remote machine and execute

```
docker run -d \
    --name=gphotos \
    -e GPHOTOS_CLI_TOKENSTORE_KEY=<PASSPHRASE>
    -v <PATH_TO_CONFIG_DIR>:/config \
    -v <PATH_TO_PHOTOS_LIBRARY>:/photos \
    --restart unless-stopped \
    zauberzeug/gphotos-uploader-service
```

Be sure to fill in `<PASSPHRASE>`, `<PATH_TO_CONFIG_DIR>` and `<PATH_TO_PHOTOS_LIBRARY>`.