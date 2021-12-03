class NasCli < Formula
  version "21.12.8"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"
  sha256 "2f79cb39a71c9314b763493fa9e39268baa537af2c8abbe5be85676416d007a3"

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end
