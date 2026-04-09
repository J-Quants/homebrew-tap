class Jquants < Formula
  desc "CLI tool for querying the J-Quants API V2 (Japanese stock market data)"
  homepage "https://github.com/J-Quants/jquants-cli"
  version "0.0.1-rc.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "75523b983f9b6d6e3308644901d8e48802dfef555a11f824deeeb18016278a19"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3a6c2a55be0afaa998c94a490e7e9060d91d1d34e29f1144245d75abda544dc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7276b88aa8b8f231dc58f87814b44d6f716372b1e58fd0ce92de60fb2582c679"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a65c37d14b410ef50a08b9f942b99a412a7523cdb257b8016f2aa3811b6aca51"
    end
  end

  def install
    bin.install "jquants"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jquants --version")
  end
end
