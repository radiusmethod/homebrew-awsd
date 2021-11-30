class Awsd < Formula
    ver = "0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "a4b5fbe337617604dd4842cbfbd7b3e7b10388cbf518c9e476fbc39187bee59d"
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
