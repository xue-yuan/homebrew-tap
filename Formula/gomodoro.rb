class Gomodoro < Formula
  desc "Pomodoro timer TUI with Spotify integration"
  homepage "https://github.com/xue-yuan/gomodoro"
  url "https://github.com/xue-yuan/gomodoro/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c27304cd11f1eddbddf218d5f1b9e4a3c5481d7d3ed5c38bcfaa9a282c5334e4"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gomodoro --version")
    ohai "gomodoro test passed"
  end
end
