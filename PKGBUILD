# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-systemd'
pkgver='0.5'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Fake systemd for RunImage container'
url="https://github.com/VHSgunzo/runimage-fake-systemd"
arch=('any')
license=('MIT')
depends=('python')
provides=('systemd' 'systemd-sysvcompat' 'udev' 'nss-myhostname' 'systemd-tools')
conflicts=(${provides[@]} 'systemd-git')
source=('systemctl' 'journalctl')
sha256sums=('SKIP' 'SKIP')

package() {
  install -Dm755 systemctl "${pkgdir}/usr/bin/systemctl"
  install -Dm755 journalctl "${pkgdir}/usr/bin/journalctl"
}
