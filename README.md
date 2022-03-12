# sample-docker-vol-mount

help to understand experiment different mount types


## Anonymous Volume folder /c1 created by Dockerfile VOLUME, populated by buildtime layer /c1
 `dkr --rm sample-docker-vol-mount:1.0`

 ## Named Volume. 
   - a. 1st time AUTO populate volume w/ buildtime layer /c1 
   - b. 2nd time named volume already exists, no AUTO populate. Volume content are shared

        ```
        dkr --rm -it -v myc1:/c1 --name named-vol-1sttime sample-docker-vol-mount:1.0 sh
        ```
        ```
        dkr --rm -it -v myc1:/c1 --name named-vol-2ndtime sample-docker-vol-mount:1.0 sh
        ```

