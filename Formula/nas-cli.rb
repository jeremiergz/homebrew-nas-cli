class NasCli < Formula
  version "v26.03.21"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"

  if Hardware::CPU.intel?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
    sha256 "3e42ee5b5c9f24fccfa5216e43c4bde190edd608b18b27dbc22702c651c49de9"
  end
  if Hardware::CPU.arm?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-arm64"
    sha256 "529b59d621c8cc4e36c4d50cc2f249e14bef9ac26dee107743f0bb533114973c"
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
