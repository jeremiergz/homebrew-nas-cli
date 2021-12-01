class NasCli < Formula
  version "21.12.5"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"
  sha256 "ea82ee4076be6df73c9352af011a0827d1f1a0f67b0527139d85edb7bad61789"

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end
