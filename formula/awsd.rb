class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "8efd05b525e48aa0e29ba788cc92c39bdc67ecc92ac5a1fd0b281455b632d3d8"
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
