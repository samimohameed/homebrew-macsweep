class Macsweep < Formula
  include Language::Python::Virtualenv

  desc "Safe, whitelist-only storage cleaner for macOS - never needs sudo"
  homepage "https://github.com/samimohameed/macsweep"
  url "https://files.pythonhosted.org/packages/e8/48/935ef40d706435952bfe1f7dcd8a6b7e1cbdbce137c6ba291315d110b491/macsweep-0.2.0.tar.gz"
  sha256 "cdb388f7c782af8075bb5e401be7f3c6f6050e38258304a0c6f99ee9c9fd54a2"
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
