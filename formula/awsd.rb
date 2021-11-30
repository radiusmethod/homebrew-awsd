class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "81604967a8d8666e90ae9f974876f5960a6788d93c9428a87e95736baaa888dd"
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
