# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='fake-systemd'
pkgver='0.9'
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
  'fix-sysd-units' 'fix-sysd-units.hook'
)
sha256sums=('SKIP' 'SKIP' 'SKIP' 'SKIP')

package() {
  install -Dm755 systemctl "${pkgdir}/usr/bin/systemctl"
  install -Dm755 journalctl "${pkgdir}/usr/bin/journalctl"
  sed -i 's|systemctl3.py|systemctl|' "${pkgdir}/usr/bin/journalctl"
  install -Dm755 fix-sysd-units "${pkgdir}/usr/share/libalpm/scripts/fix-sysd-units"
  install -Dm644 fix-sysd-units.hook "${pkgdir}/usr/share/libalpm/hooks/fix-sysd-units.hook"
}
