require "formula"

class Atcli < Formula
  version "1.0.6"
  desc "Cross-Platform Secure High-Speed Managed File Transfer Service"
  homepage "https://alephtransfer.com/"
  
  license "proprietary"
  #license_link "https://alephtransfer.com/license/atcli/LICENSE.txt"
  
  head "https://github.com/alephtransfer/homebrew-atcli.git"
  url "https://github.com/alephtransfer/homebrew-atcli/releases/download/v#{version}/atcli-darwin-amd64-#{version}.tar.gz"
  sha256 "553dfe707c896bf0216108241e9a17c1476d38a3d6028219157bdf7578fde255"
  
  ## https://support.apple.com/en-us/HT201260
  #depends_on macos: :big_sur
  depends_on macos: :catalina
  
  livecheck do
    url :url
  end

  def install
    bin.install "atcli"
    man7.install "atcli.7.gz"
  end

  # Homebrew requires tests.
  test do
    assert_match #{version}, shell_output("#{bin}/atcli --version", 2)
  end
end
