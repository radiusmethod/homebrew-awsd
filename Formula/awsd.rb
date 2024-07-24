class Awsd < Formula
    ver = "v0.1.2"
    desc "AWS Profile Switcher in Go"
    homepage "https://github.com/radiusmethod/awsd"
    url "https://github.com/radiusmethod/awsd/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "55cfd2cd344edda6f41405e0b49ad90d25647d88dee0b344b5de20d54e345f68"
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
    assert_match "awsd version: #{version}", shell_output("#{bin}/_awsd_prompt version")
    assert_predicate bin/"_awsd_prompt", :exist?, "_awsd_prompt binary should exist"
    assert_predicate bin/"_awsd_prompt", :executable?, "_awsd_prompt binary should be executable"
    assert_predicate bin/"_awsd", :exist?, "_awsd script should exist"
    assert_predicate bin/"_awsd", :executable?, "_awsd script should be executable"
    assert_predicate bin/"_awsd_autocomplete", :exist?, "_awsd_autocomplete script should exist"
    assert_predicate bin/"_awsd_autocomplete", :executable?, "_awsd_autocomplete script should be executable"
  end
end
