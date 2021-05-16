require "formula"

class Atcli < Formula
  desc "Cross-Platform Secure High-Speed Managed File Transfer Service"
  homepage "https://alephtransfer.com/"
  license "proprietary"
  #license_link "https://github.com/some/project/blob/master/LISENSE.txt"
  url "https://github.com/alephtransfer/homebrew-atcli/releases/download/v1.0.3/atcli-darwin-amd64-1.0.3.tar.gz"
  sha256 "7751ab7e3856b8601253a4575d254e066fb1e533b76995d3c45580170438d5a6"
  head "https://github.com/alephtransfer/homebrew-atcli.git"

  def install
    bin.install "atcli"
    man7.install "atcli.7.gz"
  end

  # Homebrew requires tests.
  test do
    assert_match "1.0.3", shell_output("#{bin}/atcli --version", 2)
  end
end
