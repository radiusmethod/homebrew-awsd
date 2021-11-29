class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "01efdafbad419d07d5056ae93a12df801c3edb5f21516b29ff49da8063a74255"
    license "MIT"
    head "https://github.com/pjaudiomv/awsd.git", branch: "main", :tag => ver
    version ver

    depends_on "go" => :build

    def install
        system "make", "install"
        bin.install "bin/_awsd_prompt"
        bin.install "bin/_awsd"
    end

    test do
        system "true"
    end
end
