class Awsd < Formula
    ver = "v0.1.1"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/radiusmethod/awsd"
    url "https://github.com/radiusmethod/awsd/archive/refs/tags/v0.1.1.tar.gz"
    sha256 "15f0a3dbe5bac7c4f90ba8fc974916c94072e3a51e7a10f4e03e7c7879d5155a"
    license "MIT"
    head "https://github.com/radiusmethod/awsd.git", branch: "main", :tag => ver
    version ver

    depends_on "go" => :build

    def install
        system "make", "install", "BINDIR=#{bin}"
    end

    def caveats
      <<~EOS
        For new installations:

        To finalize the setup of awsd, you need to add the following to your bash profile or zshrc:

        alias awsd="source _awsd"

        Please make sure to either reload your bash profile or .zshrc or restart your shell session after making this change.
      EOS
    end

    test do
        system "true"
    end
end
