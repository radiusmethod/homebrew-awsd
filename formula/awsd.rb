class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "2caa65184cee9f24b2a3db8337def54b3bcae58054f43b35ec9beaaab7682a27"
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
