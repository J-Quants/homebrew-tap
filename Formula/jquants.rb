class Jquants < Formula
  desc "CLI tool for querying the J-Quants API V2 (Japanese stock market data)"
  homepage "https://github.com/J-Quants/jquants-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e78015dad802f152853156b7b25a7563ef2b2e0bea8fa0adab1868e7345e1f3c"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9750d0fc41bf25720eb33c404b4201eb7d08d45762f60ead21c4b92513296290"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8499c1b6559a734f3312fc886a79dbda65cb793156e9be85441dcca9473a9d0"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e64f3fb5766d803b93116648fb15d028283c24aa91df4927ad8644086b2df4c1"
    end
  end

  def install
    bin.install "jquants"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jquants --version")
  end
end
