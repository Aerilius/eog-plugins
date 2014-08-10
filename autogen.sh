#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="eog-plugins"

(test -f $srcdir/configure.ac) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

which gnome-autogen.sh || {
    echo "You need to install gnome-common from the GNOME Subversion"
    exit 1
}
REQUIRED_AUTOCONF_VERSION=2.59
REQUIRED_AUTOMAKE_VERSION=1.11
REQUIRED_INTLTOOL_VERSION=0.50.1
REQUIRED_PKG_CONFIG_VERSION=0.16.0
USE_GNOME2_MACROS=1 . gnome-autogen.sh
