This repository contains a structured LaTeX template for writing a large project (such as a PhD Thesis), based on [my own thesis](https://ses.library.usyd.edu.au/handle/2123/31455).

The to build the thesis project use the supplied makefile. There is support for TikZ figures, and to speed up compilation, these will only be recompiled if the figures themselves have changed. To clean saved TikZ figures, use `make remake` to clean cached TikZ images.

Tested with TeX Live 2022/dev/Debian.