class NasCli < Formula
  version "v24.10.11"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"

  if Hardware::CPU.intel?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
    sha256 "b428afb32cf9a47702c2fc18717224ad55f1610380a1df0321e247818e195b54"
  end
  if Hardware::CPU.arm?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-arm64"
    sha256 "d1f767a7be09eb6dbec9720cfade86896e7e56724ac49701cea7dec4f61399c8"
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
