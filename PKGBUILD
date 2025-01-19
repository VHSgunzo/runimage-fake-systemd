# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-systemd'
pkgver='0.8'
pkgrel='1'
pkgdesc='Fake systemd for RunImage container'
url="https://github.com/VHSgunzo/runimage-fake-systemd"
arch=('any')
license=('MIT')
depends=('python')
provides=('systemd=257.2' 'systemd-tools=257.2' 'udev=257.2' 'systemd-sysvcompat' 'nss-myhostname')
conflicts=(${provides[@]} 'systemd-git')
source=(
  'systemctl::https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/refs/heads/master/files/docker/systemctl3.py'
  'journalctl::https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/refs/heads/master/files/docker/journalctl3.py'
)
sha256sums=('SKIP' 'SKIP')

package() {
  install -Dm755 systemctl "${pkgdir}/usr/bin/systemctl"
  install -Dm755 journalctl "${pkgdir}/usr/bin/journalctl"
}
