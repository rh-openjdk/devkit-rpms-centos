# Makefile --- Check upstream CentOS RPM and SRPM URLs of devkit dependencies
#
# SPDX-License-Identifier: AGPL-3.0-or-later
#
# Copyright (C) 2026 Thomas Fitzsimmons <fitzsim@redhat.com>

# Creation time in RPM repository, used to check reproducibility.  Everything
# else is hard-coded, for ease of copy-n-pasting URLs out of this file.
TAR_TIME = 2026-06-17T20:37:07-04:00

check: \
	srpms/s390x-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/compat-glibc-2.12-4.el7.centos.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/cups-1.6.3-40.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/freetype-2.8-14.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/gcc-4.8.5-39.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/genwqe-tools-4.0.20-3.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/glibc-2.17-292.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/kernel-3.10.0-1062.4.1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7.src.rpm \
	srpms/s390x-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.src.rpm \
	devkit-rpms-centos-ppc64le-20260715.tar.xz \
	devkit-rpms-centos-s390x-20260715.tar.xz \
	devkit-rpms-centos-aarch64-20260715.tar.xz \
	devkit-rpms-centos-x86_64-20260715.tar.xz
	sha512sum --check sha512sums.txt

rpms/ppc64le-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/alsa-lib-1.1.8-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/alsa-lib-devel-1.1.8-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/cups-devel-1.6.3-40.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/cups-libs-1.6.3-40.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/fontconfig-2.13.0-4.3.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/fontconfig-devel-2.13.0-4.3.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/freetype-2.8-14.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/freetype-2.8-14.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/freetype-devel-2.8-14.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/genwqe-zlib-4.0.20-3.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/genwqe-zlib-4.0.20-3.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/glibc-2.17-292.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/glibc-2.17-292.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/glibc-common-2.17-292.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/glibc-common-2.17-292.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/glibc-devel-2.17-292.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/glibc-headers-2.17-292.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/glibc-headers-2.17-292.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/glibc-utils-2.17-292.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/glibc-utils-2.17-292.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/kernel-headers-3.10.0-1062.4.1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/updates/ppc64le/Packages/kernel-headers-3.10.0-1062.4.1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libICE-1.0.9-9.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libICE-devel-1.0.9-9.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libSM-1.2.2-2.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libSM-devel-1.2.2-2.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libX11-1.6.7-2.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libX11-common-1.6.7-2.el7.noarch.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libX11-common-1.6.7-2.el7.noarch.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libX11-devel-1.6.7-2.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXau-1.0.8-2.1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXau-devel-1.0.8-2.1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXdmcp-1.1.2-6.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXext-1.3.3-3.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXext-devel-1.3.3-3.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXi-1.7.9-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXi-devel-1.7.9-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXinerama-1.1.3-2.1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXinerama-devel-1.1.3-2.1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXrandr-1.5.1-2.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXrandr-devel-1.5.1-2.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXrender-0.9.10-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXrender-devel-0.9.10-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXt-1.1.5-3.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXt-devel-1.1.5-3.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXtst-1.2.3-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/libXtst-devel-1.2.3-1.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/libffi-3.0.13-18.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/libffi-devel-3.0.13-18.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.7.1908/os/ppc64le/Packages/libgcc-4.8.5-39.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/zlib-1.2.7-18.el7.ppc64le.rpm
rpms/ppc64le-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7.ppc64le.rpm:
	wget --directory-prefix rpms/ppc64le-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7/os/ppc64le/Packages/zlib-devel-1.2.7-18.el7.ppc64le.rpm
devkit-rpms-centos-ppc64le-20260715.tar.xz: \
	rpms/ppc64le-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/freetype-2.8-14.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/genwqe-zlib-4.0.20-3.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/glibc-2.17-292.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/glibc-common-2.17-292.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/glibc-headers-2.17-292.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/glibc-utils-2.17-292.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/kernel-headers-3.10.0-1062.4.1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libX11-common-1.6.7-2.el7.noarch.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.ppc64le.rpm \
	rpms/ppc64le-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7.ppc64le.rpm
	XZ_OPT=-T0 tar --mtime="$(TAR_TIME)" --owner=root --group=root --sort=name --create --xz --file devkit-rpms-centos-ppc64le-20260715.tar.xz rpms/ppc64le-linux-gnu-CentOS7.9

# SRPMs for reference.
srpms/s390x-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/alsa-lib-1.1.8-1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/compat-glibc-2.12-4.el7.centos.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/compat-glibc-2.12-4.el7.centos.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/cups-1.6.3-40.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/Source/SPackages/cups-1.6.3-40.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/fontconfig-2.13.0-4.3.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/freetype-2.8-14.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/freetype-2.8-14.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/gcc-4.8.5-39.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/Source/SPackages/gcc-4.8.5-39.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/genwqe-tools-4.0.20-3.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/centos/7.5.1804/cr/Source/SPackages/genwqe-tools-4.0.20-3.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/glibc-2.17-292.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/Source/SPackages/glibc-2.17-292.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/kernel-3.10.0-1062.4.1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/altarch/7.8.2003/updates/Source/SPackages/kernel-3.10.0-1062.4.1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libICE-1.0.9-9.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libSM-1.2.2-2.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libX11-1.6.7-2.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXau-1.0.8-2.1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXdmcp-1.1.2-6.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXext-1.3.3-3.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXi-1.7.9-1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXinerama-1.1.3-2.1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXrandr-1.5.1-2.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXrender-0.9.10-1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXt-1.1.5-3.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/libXtst-1.2.3-1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/Source/SPackages/libffi-3.0.13-18.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/xorg-x11-proto-devel-2018.4-1.el7.src.rpm
srpms/s390x-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.src.rpm:
	wget --directory-prefix srpms/s390x-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/Source/SPackages/zlib-1.2.7-18.el7.src.rpm

rpms/s390x-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/alsa-lib-1.1.8-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/alsa-lib-devel-1.1.8-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/compat-glibc-2.12-4.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/compat-glibc-2.12-4.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/compat-glibc-headers-2.12-4.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/compat-glibc-headers-2.12-4.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/cups-devel-1.6.3-40.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/cups-libs-1.6.3-40.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/fontconfig-2.13.0-4.3.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/fontconfig-devel-2.13.0-4.3.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/freetype-2.8-14.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/freetype-2.8-14.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/freetype-devel-2.8-14.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/genwqe-zlib-4.0.20-3.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/genwqe-zlib-4.0.20-3.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/glibc-2.17-292.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/glibc-2.17-292.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/glibc-common-2.17-292.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/glibc-common-2.17-292.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/glibc-devel-2.17-292.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/glibc-headers-2.17-292.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/glibc-headers-2.17-292.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/glibc-utils-2.17-292.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/glibc-utils-2.17-292.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/kernel-headers-3.10.0-1062.4.1.el7.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/kernel-headers-3.10.0-1062.4.1.el7.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libICE-1.0.9-9.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libICE-devel-1.0.9-9.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libSM-1.2.2-2.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libSM-devel-1.2.2-2.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libX11-1.6.7-2.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libX11-common-1.6.7-2.el7_9.noarch.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libX11-common-1.6.7-2.el7_9.noarch.rpm
rpms/s390x-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libX11-devel-1.6.7-2.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXau-1.0.8-2.1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXau-devel-1.0.8-2.1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXdmcp-1.1.2-6.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXext-1.3.3-3.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXext-devel-1.3.3-3.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXi-1.7.9-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXi-devel-1.7.9-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXinerama-1.1.3-2.1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXinerama-devel-1.1.3-2.1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXrandr-1.5.1-2.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXrandr-devel-1.5.1-2.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXrender-0.9.10-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXrender-devel-0.9.10-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXt-1.1.5-3.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXt-devel-1.1.5-3.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXtst-1.2.3-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libXtst-devel-1.2.3-1.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libffi-3.0.13-18.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libffi-devel-3.0.13-18.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/libgcc-4.8.5-39.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7_9.noarch.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/xorg-x11-proto-devel-2018.4-1.el7_9.noarch.rpm
rpms/s390x-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/zlib-1.2.7-18.el7_9.s390x.rpm
rpms/s390x-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7_9.s390x.rpm:
	wget --directory-prefix rpms/s390x-linux-gnu-CentOS7.9 https://github.com/rh-openjdk/devkit-rpms-centos/releases/download/20260715/zlib-devel-1.2.7-18.el7_9.s390x.rpm
devkit-rpms-centos-s390x-20260715.tar.xz: \
	rpms/s390x-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/compat-glibc-2.12-4.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/compat-glibc-headers-2.12-4.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/freetype-2.8-14.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/genwqe-zlib-4.0.20-3.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/glibc-2.17-292.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/glibc-common-2.17-292.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/glibc-headers-2.17-292.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/glibc-utils-2.17-292.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/kernel-headers-3.10.0-1062.4.1.el7.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libX11-common-1.6.7-2.el7_9.noarch.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7_9.noarch.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7_9.s390x.rpm \
	rpms/s390x-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7_9.s390x.rpm
	XZ_OPT=-T0 tar --mtime="$(TAR_TIME)" --owner=root --group=root --sort=name --create --xz --file devkit-rpms-centos-s390x-20260715.tar.xz rpms/s390x-linux-gnu-CentOS7.9

rpms/aarch64-linux-gnu-CentOS7.6/alsa-lib-1.1.6-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/alsa-lib-1.1.6-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/alsa-lib-devel-1.1.6-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/alsa-lib-devel-1.1.6-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/cups-devel-1.6.3-35.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/cups-devel-1.6.3-35.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/cups-libs-1.6.3-35.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/cups-libs-1.6.3-35.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/fontconfig-2.13.0-4.3.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/fontconfig-2.13.0-4.3.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/fontconfig-devel-2.13.0-4.3.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/fontconfig-devel-2.13.0-4.3.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/freetype-2.8-12.el7_6.1.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/freetype-2.8-12.el7_6.1.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/freetype-devel-2.8-12.el7_6.1.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/freetype-devel-2.8-12.el7_6.1.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/glibc-2.17-260.el7_6.6.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/glibc-2.17-260.el7_6.6.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/glibc-common-2.17-260.el7_6.6.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/glibc-common-2.17-260.el7_6.6.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/glibc-devel-2.17-260.el7_6.6.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/glibc-devel-2.17-260.el7_6.6.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/glibc-headers-2.17-260.el7_6.6.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/glibc-headers-2.17-260.el7_6.6.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/glibc-utils-2.17-260.el7_6.6.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/glibc-utils-2.17-260.el7_6.6.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/kernel-headers-4.14.0-115.8.1.el7a.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/kernel-headers-4.14.0-115.8.1.el7a.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libICE-1.0.9-9.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libICE-1.0.9-9.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libICE-devel-1.0.9-9.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libICE-devel-1.0.9-9.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libSM-1.2.2-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libSM-1.2.2-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libSM-devel-1.2.2-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libSM-devel-1.2.2-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libX11-1.6.5-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libX11-1.6.5-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libX11-common-1.6.5-2.el7.noarch.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libX11-common-1.6.5-2.el7.noarch.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libX11-devel-1.6.5-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libX11-devel-1.6.5-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXau-1.0.8-2.1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXau-1.0.8-2.1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXau-devel-1.0.8-2.1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXau-devel-1.0.8-2.1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXdmcp-1.1.2-6.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXdmcp-1.1.2-6.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXext-1.3.3-3.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXext-1.3.3-3.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXext-devel-1.3.3-3.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXext-devel-1.3.3-3.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXi-1.7.9-1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXi-1.7.9-1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXi-devel-1.7.9-1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXi-devel-1.7.9-1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXinerama-1.1.3-2.1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXinerama-1.1.3-2.1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXinerama-devel-1.1.3-2.1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXinerama-devel-1.1.3-2.1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXrandr-1.5.1-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXrandr-1.5.1-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXrandr-devel-1.5.1-2.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXrandr-devel-1.5.1-2.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXrender-0.9.10-1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXrender-0.9.10-1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXrender-devel-0.9.10-1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXrender-devel-0.9.10-1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXt-1.1.5-3.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXt-1.1.5-3.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXt-devel-1.1.5-3.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXt-devel-1.1.5-3.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXtst-1.2.3-1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXtst-1.2.3-1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libXtst-devel-1.2.3-1.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libXtst-devel-1.2.3-1.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libffi-3.0.13-18.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libffi-3.0.13-18.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libffi-devel-3.0.13-18.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/libffi-devel-3.0.13-18.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/libgcc-4.8.5-36.el7_6.2.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/updates/aarch64/Packages/libgcc-4.8.5-36.el7_6.2.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/systemtap-sdt-devel-3.3-3.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/systemtap-sdt-devel-3.3-3.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm
rpms/aarch64-linux-gnu-CentOS7.6/zlib-1.2.7-18.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/zlib-1.2.7-18.el7.aarch64.rpm
rpms/aarch64-linux-gnu-CentOS7.6/zlib-devel-1.2.7-18.el7.aarch64.rpm:
	wget --directory-prefix rpms/aarch64-linux-gnu-CentOS7.6 https://vault.centos.org/altarch/7.6.1810/os/aarch64/Packages/zlib-devel-1.2.7-18.el7.aarch64.rpm
devkit-rpms-centos-aarch64-20260715.tar.xz: \
	rpms/aarch64-linux-gnu-CentOS7.6/alsa-lib-1.1.6-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/alsa-lib-devel-1.1.6-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/cups-devel-1.6.3-35.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/cups-libs-1.6.3-35.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/fontconfig-2.13.0-4.3.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/fontconfig-devel-2.13.0-4.3.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/freetype-2.8-12.el7_6.1.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/freetype-devel-2.8-12.el7_6.1.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/glibc-2.17-260.el7_6.6.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/glibc-common-2.17-260.el7_6.6.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/glibc-devel-2.17-260.el7_6.6.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/glibc-headers-2.17-260.el7_6.6.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/glibc-utils-2.17-260.el7_6.6.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/kernel-headers-4.14.0-115.8.1.el7a.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libICE-1.0.9-9.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libICE-devel-1.0.9-9.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libSM-1.2.2-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libSM-devel-1.2.2-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libX11-1.6.5-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libX11-common-1.6.5-2.el7.noarch.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libX11-devel-1.6.5-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXau-1.0.8-2.1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXau-devel-1.0.8-2.1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXdmcp-1.1.2-6.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXext-1.3.3-3.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXext-devel-1.3.3-3.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXi-1.7.9-1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXi-devel-1.7.9-1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXinerama-1.1.3-2.1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXinerama-devel-1.1.3-2.1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXrandr-1.5.1-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXrandr-devel-1.5.1-2.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXrender-0.9.10-1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXrender-devel-0.9.10-1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXt-1.1.5-3.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXt-devel-1.1.5-3.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXtst-1.2.3-1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libXtst-devel-1.2.3-1.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libffi-3.0.13-18.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libffi-devel-3.0.13-18.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/libgcc-4.8.5-36.el7_6.2.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/systemtap-sdt-devel-3.3-3.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/zlib-1.2.7-18.el7.aarch64.rpm \
	rpms/aarch64-linux-gnu-CentOS7.6/zlib-devel-1.2.7-18.el7.aarch64.rpm
	XZ_OPT=-T0 tar --mtime="$(TAR_TIME)" --owner=root --group=root --sort=name --create --xz --file devkit-rpms-centos-aarch64-20260715.tar.xz rpms/aarch64-linux-gnu-CentOS7.6

rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/alsa-lib-1.1.8-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/alsa-lib-1.1.8-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/alsa-lib-devel-1.1.8-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/alsa-lib-devel-1.1.8-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/compat-glibc-2.12-4.el7.centos.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/compat-glibc-2.12-4.el7.centos.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/compat-glibc-headers-2.12-4.el7.centos.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/compat-glibc-headers-2.12-4.el7.centos.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/cups-devel-1.6.3-40.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/cups-devel-1.6.3-40.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/cups-libs-1.6.3-40.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/cups-libs-1.6.3-40.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/fontconfig-2.13.0-4.3.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/fontconfig-2.13.0-4.3.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/fontconfig-devel-2.13.0-4.3.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/fontconfig-devel-2.13.0-4.3.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/freetype-2.8-14.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/freetype-2.8-14.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/freetype-2.8-14.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/freetype-2.8-14.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/freetype-devel-2.8-14.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/freetype-devel-2.8-14.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/glibc-2.17-292.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/glibc-2.17-292.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/glibc-2.17-292.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/glibc-2.17-292.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/glibc-common-2.17-292.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/glibc-common-2.17-292.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/glibc-devel-2.17-292.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/glibc-devel-2.17-292.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/glibc-headers-2.17-292.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/glibc-headers-2.17-292.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/glibc-utils-2.17-292.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/glibc-utils-2.17-292.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/kernel-headers-3.10.0-1062.4.1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/updates/x86_64/Packages/kernel-headers-3.10.0-1062.4.1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libICE-1.0.9-9.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libICE-1.0.9-9.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libICE-devel-1.0.9-9.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libICE-devel-1.0.9-9.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libSM-1.2.2-2.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libSM-1.2.2-2.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libSM-devel-1.2.2-2.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libSM-devel-1.2.2-2.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libX11-1.6.7-2.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libX11-1.6.7-2.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libX11-common-1.6.7-2.el7.noarch.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libX11-common-1.6.7-2.el7.noarch.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libX11-devel-1.6.7-2.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libX11-devel-1.6.7-2.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXau-1.0.8-2.1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXau-1.0.8-2.1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXau-devel-1.0.8-2.1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXau-devel-1.0.8-2.1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXdmcp-1.1.2-6.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXdmcp-1.1.2-6.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXext-1.3.3-3.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXext-1.3.3-3.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXext-devel-1.3.3-3.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXext-devel-1.3.3-3.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXi-1.7.9-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXi-1.7.9-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXi-devel-1.7.9-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXi-devel-1.7.9-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXinerama-1.1.3-2.1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXinerama-1.1.3-2.1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXinerama-devel-1.1.3-2.1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXinerama-devel-1.1.3-2.1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrandr-1.5.1-2.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrandr-1.5.1-2.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrandr-devel-1.5.1-2.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrandr-devel-1.5.1-2.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrender-0.9.10-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrender-0.9.10-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrender-devel-0.9.10-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXrender-devel-0.9.10-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXt-1.1.5-3.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXt-1.1.5-3.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXt-devel-1.1.5-3.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXt-devel-1.1.5-3.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXtst-1.2.3-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXtst-1.2.3-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXtst-devel-1.2.3-1.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/libXtst-devel-1.2.3-1.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/libffi-3.0.13-18.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/libffi-3.0.13-18.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/libffi-devel-3.0.13-18.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/libffi-devel-3.0.13-18.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/libgcc-4.8.5-39.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/os/x86_64/Packages/libgcc-4.8.5-39.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/systemtap-sdt-devel-4.0-10.el7_7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/updates/x86_64/Packages/systemtap-sdt-devel-4.0-10.el7_7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/systemtap-sdt-devel-4.0-10.el7_7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.7.1908/updates/x86_64/Packages/systemtap-sdt-devel-4.0-10.el7_7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm
rpms/x86_64-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/zlib-1.2.7-18.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/zlib-1.2.7-18.el7.x86_64.rpm
rpms/x86_64-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7.i686.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/zlib-devel-1.2.7-18.el7.i686.rpm
rpms/x86_64-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7.x86_64.rpm:
	wget --directory-prefix rpms/x86_64-linux-gnu-CentOS7.9 https://vault.centos.org/7.9.2009/os/x86_64/Packages/zlib-devel-1.2.7-18.el7.x86_64.rpm
devkit-rpms-centos-x86_64-20260715.tar.xz: \
	rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-1.1.8-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/alsa-lib-devel-1.1.8-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/compat-glibc-2.12-4.el7.centos.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/compat-glibc-headers-2.12-4.el7.centos.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/cups-devel-1.6.3-40.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/cups-libs-1.6.3-40.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-2.13.0-4.3.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/fontconfig-devel-2.13.0-4.3.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/freetype-2.8-14.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/freetype-2.8-14.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/freetype-devel-2.8-14.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/glibc-2.17-292.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/glibc-2.17-292.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/glibc-common-2.17-292.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/glibc-devel-2.17-292.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/glibc-headers-2.17-292.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/glibc-utils-2.17-292.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/kernel-headers-3.10.0-1062.4.1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libICE-1.0.9-9.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libICE-devel-1.0.9-9.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libSM-1.2.2-2.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libSM-devel-1.2.2-2.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libX11-1.6.7-2.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libX11-common-1.6.7-2.el7.noarch.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libX11-devel-1.6.7-2.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXau-1.0.8-2.1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXau-devel-1.0.8-2.1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXdmcp-1.1.2-6.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXext-1.3.3-3.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXext-devel-1.3.3-3.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXi-1.7.9-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXi-devel-1.7.9-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-1.1.3-2.1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXinerama-devel-1.1.3-2.1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-1.5.1-2.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrandr-devel-1.5.1-2.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrender-0.9.10-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXrender-devel-0.9.10-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXt-1.1.5-3.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXt-devel-1.1.5-3.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXtst-1.2.3-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libXtst-devel-1.2.3-1.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libffi-3.0.13-18.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libffi-devel-3.0.13-18.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/libgcc-4.8.5-39.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/systemtap-sdt-devel-4.0-10.el7_7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/systemtap-sdt-devel-4.0-10.el7_7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/xorg-x11-proto-devel-2018.4-1.el7.noarch.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/zlib-1.2.7-18.el7.x86_64.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7.i686.rpm \
	rpms/x86_64-linux-gnu-CentOS7.9/zlib-devel-1.2.7-18.el7.x86_64.rpm
	XZ_OPT=-T0 tar --mtime="$(TAR_TIME)" --owner=root --group=root --sort=name --create --xz --file devkit-rpms-centos-x86_64-20260715.tar.xz rpms/x86_64-linux-gnu-CentOS7.9

.PHONY: check
