class Awsd < Formula
    ver = "v0.0.6"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.6.tar.gz"
    sha256 "95aa25706da0bef6c6af75b1322ce9b2ddea1b73a3aafff9ddaf585dab5e718d"
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
