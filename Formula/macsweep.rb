class Macsweep < Formula
  include Language::Python::Virtualenv

  desc "Safe, whitelist-only storage cleaner for macOS - never needs sudo"
  homepage "https://github.com/samimohameed/macsweep"
  url "https://files.pythonhosted.org/packages/35/ee/297dc1fbd8017fd2503a26d615b823a0e7d394a265164d934e709fb11146/macsweep-0.2.2.tar.gz"
  sha256 "1eebd12d2d73096970ff8eec5d96e6cbaf327e5135f1bb578aaadcb7c75ed956"
  license "MIT"

  depends_on :macos
  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "user-caches", shell_output("#{bin}/macsweep targets")
  end
end
