# Maintainer:

pkgname=mkadpse-git
pkgver=1.0.ac279a9
pkgrel=1
pkgdesc="SoundEnhancement Xtreme - Blah Blah Blah!!!"
arch=('any')
url="https://github.com/DevMohitash/7SEB.git"
license=('GPL3')
depends=()
makedepends=('git')
source=("$pkgname"::'git+https://github.com/DevMohitash/mkadpse')
md5sums=('SKIP')
provides=(mkadpse)

pkgver() {
  cd "$pkgname"
  echo "1.0.`git rev-parse --short HEAD`"
}

package() {
  cd "$srcdir/${pkgname}/"
  chmod +x mkadp
  mkdir -p "$pkgdir/usr/bin/"
  mkdir -p "$pkgdir/etc/systemd/system/"
  install -Dm744 ktweak "$pkgdir/usr/bin/mkadpse"
  install -Dm644 ktweak.service "$pkgdir/etc/systemd/system/mkadpse.service"
}
© 2021 GitHub, Inc.
