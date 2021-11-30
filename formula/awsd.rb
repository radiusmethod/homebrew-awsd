class Awsd < Formula
    ver = "0.0.1"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.1.tar.gz"
    sha256 "b2cd0e48abc6e36908c37e24ed7d1406ad20c6efda52ac11ec52e766dff8ed86"
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
