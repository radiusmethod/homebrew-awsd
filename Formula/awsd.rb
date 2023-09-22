class Awsd < Formula
    # renovate: datasource=gitlab-releases depName=pjaudiomv/awsd versioning=semver
    ver = "v0.0.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/pjaudiomv/awsd"
    url "https://github.com/pjaudiomv/awsd/archive/v0.0.2.tar.gz"
    sha256 "a6503b4c1693eb8b70f3f463caf05a7f291f6e12136c30c46fb97400ccb8e34d"
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
