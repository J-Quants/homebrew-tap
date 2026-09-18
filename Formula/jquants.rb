class Jquants < Formula
  desc "CLI tool for querying the J-Quants API V2 (Japanese stock market data)"
  homepage "https://github.com/J-Quants/jquants-cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4ade05ab250910655e4f60169136deabd9afd96ac867fee34d3164329cb127d5"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "44d9cd923641f2499b5c3020231472e70a55e9b068221257ef8f6eee3562ee23"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bad5687189528aa053ebc287b7e3de745fa2d3969209654bd9af89888342bf5a"
    end
    on_arm do
      url "https://github.com/J-Quants/jquants-cli/releases/download/v#{version}/jquants-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfa4933f713073dd1a04f8c7211326bb4ab0155723bbbdf7a2843fa26a18f57f"
    end
  end

  def install
    bin.install "jquants"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jquants --version")
  end
end
