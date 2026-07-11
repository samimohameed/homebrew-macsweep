class Macsweep < Formula
  include Language::Python::Virtualenv

  desc "Safe, whitelist-only storage cleaner for macOS - never needs sudo"
  homepage "https://github.com/samimohameed/macsweep"
  url "https://files.pythonhosted.org/packages/84/f6/a508873b954a6d0d0a62fed8564e71c732885937c84f7c02b0dfbde990f1/macsweep-0.2.1.tar.gz"
  sha256 "500410c0a7f17b878835d127fa832aef59bd69e86e5f9ef8b832e6207b811cf3"
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
