class Macsweep < Formula
  include Language::Python::Virtualenv

  desc "Safe, whitelist-only storage cleaner for macOS - never needs sudo"
  homepage "https://github.com/samimohameed/macsweep"
  url "https://files.pythonhosted.org/packages/eb/a1/8e0eb2a2c8da24fffa0d438cb9362db12b63be7b1f02fa78c3db3c1a7211/macsweep-0.3.0.tar.gz"
  sha256 "7b68304e8d8db4f0a26f5809c8d6c2bbd313a223b82dfdcbeb280059d85195f4"
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
