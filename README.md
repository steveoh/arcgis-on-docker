# ArcGIS For Server On Docker

The following steps will bootstrap a CentOS [ArcGIS for Server](http://www.esri.com/software/arcgis/arcgisserver) in a [docker](https://www.docker.com/) container.

## ArcGIS Resources

1. Download ArcGIS for Server from [my.esri.com](https://my.esri.com/#/downloads) and rename it to `ags.tar.gz`.
2. Download your license file `XXXX.prvc` from the [provisioning](https://my.esri.com/#/provisioning/417547) section and place it in `/license/`

## Building the Image

```bash
docker-compose build
```

## Create a Container from the Image

```bash
 docker-compose up
```

## Create a New Site

Navigate to <http://localhost:6080/arcgis/manager>:
