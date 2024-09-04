class NasCli < Formula
  version "v24.09.1"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"

  if Hardware::CPU.intel?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
    sha256 "23ceb0081d88b57c545fe1a11bf156c2a10dff2c6d95519906e139a236a707d6"
  end
  if Hardware::CPU.arm?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-arm64"
    sha256 "a6aa871dff730ac26ac4795f2efa5b75654165f737dc6715b2d828779fc972b2"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "nas-cli-darwin-amd64" => "nas-cli"
    end
    if Hardware::CPU.arm?
      bin.install "nas-cli-darwin-arm64" => "nas-cli"
    end
  end

  test do
    system "#{bin}/nas-cli version"
  end
end
