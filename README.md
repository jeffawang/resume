resume
===

This is jeff's resume.

Render with `make clean all`, which will render html and txt output to a `docs` directory (creating it if necessary).

So far, only tested on MacOS.

Use `./watch.sh` to hot reload manpage rendering/viewing when repo files change.

Refer to `man`-related docs for formatting help.

```
# Reference for all the useful groff macros that ship with man.
man groff_mdoc

# Groff.
man groff

# list manpage paths
man -aW

# find man (7) pages
man -aW | tr : '\n' | while read i; do find "$i" -type d -name man7; done
```

