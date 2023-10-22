class NasCli < Formula
  version "v23.10.3"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"

  if Hardware::CPU.intel?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
    sha256 "ca0ddd22fb5cd40ebb1ad8fb727ba70702a11f906a2aeded30c75c96cd3e4e14"
  end
  if Hardware::CPU.arm?
    url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-arm64"
    sha256 "d58cad35752da4863e9c90fa07bb52f5ccb03928efe3e9ccb40e0fdb64e0409c"
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
