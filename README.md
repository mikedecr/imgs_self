# "Brand" images

Module containing "self-ID" branding images for websites, work profiles, etc...

## Advice for use

For some other `project` that needs a branding image.

```sh
cd path/to/project
```

Adding the module to project:

```sh
mkdir submodules
cd submodules
git submodule add <remote url>
```

Ensuring updated content:

```
git submodule update --init --recursive
```

Linking images to project locations:

```
# s = symlink, r = relative paths, f = force
ln -srf submodules/imgs_self/image.png path/to/destination/image.png
```
