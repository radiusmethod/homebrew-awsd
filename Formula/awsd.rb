class Awsd < Formula
    ver = "v0.0.8"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/radiusmethod/awsd"
    url "https://github.com/radiusmethod/awsd/archive/v0.0.8.tar.gz"
    sha256 "05ad54d30a3ceea9c297adfd547bfb58f6a72204beff6d49bfb913891fa14ae6"
    license "MIT"
    head "https://github.com/radiusmethod/awsd.git", branch: "main", :tag => ver
    version ver

    depends_on "go" => :build

    def install
        system "make", "install", "BINDIR=#{bin}"
    end

    def caveats
      <<~EOS
        To finalize the setup of awsd, you need to add the following to your bash profile or zshrc:

        alias awsd="source _awsd"

        Please make sure to either reload your bash profile or .zshrc or restart your shell session after making this change.
      EOS
    end

    test do
        system "true"
    end
end
