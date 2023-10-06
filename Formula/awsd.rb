class Awsd < Formula
    ver = "v0.0.5"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.5.tar.gz"
    sha256 "21588bcc6a1ca43df8eec7a146183ad8cc86ffcb517d3b856de8f5f999bbf3de"
    license "MIT"
    head "https://github.com/pjaudiomv/awsd.git", branch: "main", :tag => ver
    version ver

    depends_on "go" => :build

    def install
        system "make", "install", "BINDIR=#{bin}"
    end

    test do
        system "true"
    end
end
