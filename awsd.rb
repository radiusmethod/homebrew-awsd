class Awsd < Formula
  desc "AWS Profile Switcher in Go"
  homepage "https://github.com/pjaudiomv/awsd"
  url "https://github.com/pjaudiomv/awsd/archive/v0.0.1.tar.gz"
  sha256 "3a7ab29fd72b5ea80a09963ab3b9183342b8c3e18b4952760e9dbc9326c0ef1f"
  license "MIT"
  head "https://github.com/pjaudiomv/awsd.git", branch: "main"

  def install
    system "bash", "install.sh"
  end
end
