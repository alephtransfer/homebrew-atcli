require "formula"

class Atcli < Formula
  version "1.0.6"
  desc "Cross-Platform Secure High-Speed Managed File Transfer Service"
  homepage "https://alephtransfer.com/"
  
  license "proprietary"
  #license_link "https://alephtransfer.com/license/atcli/LICENSE.txt"
  
  head "https://github.com/alephtransfer/homebrew-atcli.git"
  url "https://github.com/alephtransfer/homebrew-atcli/releases/download/v#{version}/atcli-darwin-amd64-#{version}.tar.gz"
  sha256 "22b693dd7b40e9dc061d80ee58ed72587dd6e52c01afd4db7d71d8aea43ed610"
  
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
