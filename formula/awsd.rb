class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "ba9cbe0c38fcd75cff12d78fa3ac2e3f99e78ae7025ac94dfdce631b6d451290"
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
