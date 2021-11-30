class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "ce9c5ab8e03ff3027e60a694963301e76492df9d2e22f6efdd3c19051dc5732c"
    license "MIT"
    head "https://github.com/pjaudiomv/awsd.git", branch: "main", :tag => ver
    version ver

    depends_on "go" => :build

    def install
        system "PREFIX=#{share} ./configure.sh"
        bin.install Dir["#{share}/bin/*"]
    end

    test do
        system "true"
    end
end
