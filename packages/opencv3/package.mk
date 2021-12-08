PKG_NAME="opencv3"
PKG_VERSION="50bfced386c8763a0d36991d2ac5f7bf6e71f28c"
PKG_SHA256="2706895d0411a99d05a6646e8569ececcaeb074e786b861f0085bb7f53059741"
PKG_SOURCE_DIR="opencv-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/opencv3"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="OpenCV3"
PKG_SOURCE_NAME="opencv3-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="YES"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/opencv3
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/opencv3/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/opencv3
}
