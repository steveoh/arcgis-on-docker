# ArcGIS For Server On Docker

The following steps will bootstrap a CentOS [ArcGIS for Server](http://www.esri.com/software/arcgis/arcgisserver) in a [docker](https://www.docker.com/) container.

## ArcGIS Resources

1. Download ArcGIS for Server from [my.esri.com](https://my.esri.com/#/downloads) and rename it to `ags.tar.gz` and place it along side the dockerfile.
2. Download your license file from the [provisioning](https://my.esri.com/#/provisioning/417547) section and place it in the `/license/` folder.

## Build the Image

This step is only necessary once.

```bash
docker-compose build
```

## Create and start a Container from the Image

```bash
 docker-compose up -d
```

## Stop the container

```bash
docker-compose down
```

## Create a New Site

Navigate to <http://localhost:6080/arcgis/manager>:

## Roadmap

1. Persist config store and data so container state is saved.
1. Bootstrap a container with services similar to how the license file thing works.


Hat tip to [Mansour](https://twitter.com/mraad) for a great [reference](https://github.com/mraad/docker-arcgis) for how to get going with all of this.
