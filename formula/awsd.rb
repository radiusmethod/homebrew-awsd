class Awsd < Formula
  ver = "0.0.1"
  
  desc "AWS Profile Switcher in Go"
  homepage "https://github.com/pjaudiomv/awsd"
  url "https://github.com/pjaudiomv/awsd/archive/v0.0.1.tar.gz"
  sha256 "ccd21e525e9e7c9d5e0f331e0a66270ebb75a99e6bfa394e012bbb9d839da886"
  license "MIT"
  head "https://github.com/pjaudiomv/awsd.git", branch: "main", :tag => ver
  version ver

  depends_on "go" => :build

  def installs
    system "PREFIX=#{share} ./install.sh"
    bin.install Dir["#{share}/bin/*"]
  end

  test do
    system "true"
  end
end
