class NasCli < Formula
  version "21.12.6"
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/#{version}/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  license "Apache-2.0"
  conflicts_with "nas-cli"
  sha256 "45c92a84f901afbffee1fef892b6e3109fe9c718286f827af4c7ec6ffa37e54a"

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end
