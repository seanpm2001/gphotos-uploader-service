#!/bin/sh
sed -i 's+SourceFolder.*+SourceFolder: /photos+g' /config/config.hjson
gphotos-uploader-cli --config /config push