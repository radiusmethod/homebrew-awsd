class Awsd < Formula
  ver = "0.0.1"
  
  desc "AWS Profile Switcher in Go"
  homepage "https://github.com/pjaudiomv/awsd"
  url "https://github.com/pjaudiomv/awsd/archive/v0.0.1.tar.gz"
  sha256 "29bc20c763416f22dc9fc0857c389e4178d3f7c7d9e5b2bac3b24b7a329de685"
  license "MIT"
  head "https://github.com/pjaudiomv/awsd.git", branch: "main", :tag => ver
  version ver

  depends_on "go" => :build

  def installs
    system "PREFIX=#{share}", "bash", "install.sh"
    bin.install Dir["#{share}/bin/*"]
  end

  test do
    system "true"
  end
end
