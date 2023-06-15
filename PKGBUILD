# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-systemd'
pkgver='0.4'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Fake systemd for RunImage container'
url="https://github.com/VHSgunzo/runimage-fake-systemd"
arch=('any')
license=('MIT')
depends=('python')
provides=('systemd' 'systemd-sysvcompat')
conflicts=(${provides[@]} 'systemd-git' 'lib32-systemd-git')
source=('systemctl' 'journalctl')
sha256sums=('SKIP' 'SKIP')

package() {
  install -Dm755 systemctl "${pkgdir}/usr/bin/systemctl"
  install -Dm755 journalctl "${pkgdir}/usr/bin/journalctl"
}
