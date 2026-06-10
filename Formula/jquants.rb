class Jquants < Formula
  desc "CLI tool for querying the J-Quants API V2 (Japanese stock market data)"
  homepage "https://github.com/J-Quants/jquants-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6733e6c14d89fa2fc475b631980ea0086300599e9b2188364ef6636716c92b4e"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8b89ba716c1a626c0f184d30d58eab9c9da243c0ba8b3f5dbbe6244d81808d76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd7df2603ec77363ea30a667cd6a6f8ef63a31a95a3eb2fee335bd9fb862e0ea"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fcd929c3c6e1521e456d33a8926a882b40c1f0b519f8083b8c3ed22effbb2c56"
    end
  end

  def install
    bin.install "jquants"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jquants --version")
  end
end
