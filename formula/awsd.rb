class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "5fc4107035e716cfb208f4191648d2d53fd5fb491017064783aad447abd5dd3a"
    license "MIT"
    head "https://github.com/pjaudiomv/awsd.git", branch: "main", :tag => ver
    version ver

    depends_on "go" => :build

    def install
        ENV["DESTDIR"] = "#{prefix}"
        system "make", "install"
        bin.install "bin/_awsd_prompt"
        bin.install "bin/_awsd"
    end

    test do
        system "true"
    end
end
