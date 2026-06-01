class Jquants < Formula
  desc "CLI tool for querying the J-Quants API V2 (Japanese stock market data)"
  homepage "https://github.com/J-Quants/jquants-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d6f9bc66203baac9aee2f1feadeb70dc8f5b99bdc90664fd112191fa0efd8f38"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0bf3b00151b7d0a682e9898cebed5f9b566cebe48102864052e90a259c257914"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f3f85378ce8c15812ff27fc178640af5599c28b1dd614ddbb4231017f3da055"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77c7dac998ca9bd3c8ab06e6f2bfb037bf2aa150ecf251f994aeb5a6a98f8d6b"
    end
  end

  def install
    bin.install "jquants"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jquants --version")
  end
end
