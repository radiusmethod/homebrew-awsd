class Awsd < Formula
    ver = "0.0.3"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.3.tar.gz"
    sha256 "a7c022feacd1e9bef07b8900c809dd41d076aa56461d043d276efe565a29cdaf"
    license "MIT"
    head "https://github.com/pjaudiomv/awsd.git", branch: "main", :tag => ver
    version ver

    def install
        system "make", "install", "BINDIR=#{bin}"
    end

    test do
        system "true"
    end
end
