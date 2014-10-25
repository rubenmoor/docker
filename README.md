docker-warp-rest
================

Find here the completely dockerized implementation of the Haskell rest packages, using warp server.

The code is simply a rest example, taken from

https://github.com/silkapp/rest/tree/master/rest-example

There is a script to build the docker images.
Just do

```
./build-warp-rest.sh
```

And there is a script to run the rest example app with warp,
one container for the api and another one for a sample client script.
Once you have built the images, run

```
./run-warp-rest.sh
```

Once docker hub supports multiple docker files and build hierarchies, you can get the images (rather than the docker files) from there.
