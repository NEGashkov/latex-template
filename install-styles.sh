#!/usr/bin/env bash
#
# TODO:
#   * Don't rely on external libs API and freeze dependencies.

TMP_TARGET=~/.tex-sources-tmp
TEX_LIBS_TARGET=~/Library/texmf/tex/generic

PYTHON_HIGHLIGHTING_REPO=git@github.com:olivierverdier/python-latex-highlighting.git
METROPOLIS_BEAMER_THEME_REPO=git@github.com:matze/mtheme.git

# Create required directories.
mkdir -p ${TMP_TARGET}
mkdir -p ${TEX_LIBS_TARGET}

cd ${TMP_TARGET}

# Clone repos into temporary directory.
git clone ${PYTHON_HIGHLIGHTING_REPO}
git clone ${METROPOLIS_BEAMER_THEME_REPO}

# Make style files and move them to TeX libs.
mv python-latex-highlighting/pythonhighlight.sty ${TEX_LIBS_TARGET}
cd mtheme && make sty
mv *.sty ${TEX_LIBS_TARGET}

# Remove temporary directory.
rm -rf ${TMP_TARGET}
