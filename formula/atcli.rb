require "formula"

class ATCLI < Formula
  desc "Cross-Platform Secure High-Speed Managed File Transfer Service"
  homepage "https://app.alephtransfer.com/"
  url "https://github.com/alephtransfer/homebrew-atcli/releases/download/v1.0.3/atcli-darwin-amd64-1.0.3.tar.gz"
  sha256 "4eeeb4d0dbe7a82f53a378b9ef9417c0ad2d12ab5db87135cb65ba04cc8bd3a9"
  head "https://github.com/alephtransfer/homebrew-atcli.git"

  def install
    bin.install "atcli"
  end

  # Homebrew requires tests.
  test do
    assert_match "1.0.3", shell_output("#{bin}/atcli --version", 2)
  end
end
