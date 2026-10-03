class Gomodoro < Formula
  desc "Pomodoro timer TUI with Spotify integration"
  homepage "https://github.com/xue-yuan/gomodoro"
  url "https://github.com/xue-yuan/gomodoro/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9fc24aff48f8f9833445bf457cf6ca54837184319f6d7d725cd097d42c25637f"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_path_exists bin/"gomodoro"
  end
end

