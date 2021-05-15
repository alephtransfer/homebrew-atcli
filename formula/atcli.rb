require "formula"

class Atcli < Formula
  desc "Cross-Platform Secure High-Speed Managed File Transfer Service"
  homepage "https://app.alephtransfer.com/"
  url "https://github.com/alephtransfer/homebrew-atcli/releases/download/v1.0.3/atcli-darwin-amd64-1.0.3.tar.gz"
  sha256 "ee65b0780fc2f88a2c8a7e704d7d2586601ca1ae016a4c6f40dae5c3cc081463"
  head "https://github.com/alephtransfer/homebrew-atcli.git"

  def install
    bin.install "atcli"
  end

  # Homebrew requires tests.
  test do
    assert_match "1.0.3", shell_output("#{bin}/atcli --version", 2)
  end
end
