class NasCli < Formula
  version "v25.04.1"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"

  if Hardware::CPU.intel?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
    sha256 "4d3203c5b1b7420a63b829f119a0591dda59ae495c12f03633c9d589966fe3f8"
  end
  if Hardware::CPU.arm?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-arm64"
    sha256 "8cc7da9f80502052be00037bc7bdbe23a33ff0af126bd7440d72d883518805f7"
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
