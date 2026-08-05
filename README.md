# Homebrew tap for awsd
This repository maintains a [homebrew tap](https://docs.brew.sh/Taps) for [awsd](https://github.com/radiusmethod/awsd).
For instructions on installing [awsd](https://github.com/radiusmethod/awsd) please see repository [here](https://github.com/radiusmethod/awsd?tab=readme-ov-file#installation).

```sh
brew tap radiusmethod/awsd
brew install awsd
```

### Casks/awsd.rb is generated

As of awsd v0.4.0 this tap ships a **cask** carrying prebuilt binaries, not a formula that compiles
from source. `Casks/awsd.rb` is written by [GoReleaser](https://goreleaser.com) from
`.goreleaser.yaml` in the [awsd](https://github.com/radiusmethod/awsd) repository.

**Do not edit `Casks/awsd.rb` by hand.** The next release overwrites it. To change the cask,
including its caveats text, edit `homebrew_casks` in awsd's `.goreleaser.yaml`.

### Updating Tap

Tagging a release in [awsd](https://github.com/radiusmethod/awsd) is the whole process. GoReleaser
builds the binaries, publishes the GitHub release, and pushes an updated `Casks/awsd.rb` straight
to `main` here. There is no Pull Request to review and no renovate bump to wait for.

The push needs the `HOMEBREW_TAP_GITHUB_TOKEN` secret in the awsd repository, holding a token with
write access to this one. If that token is missing or expired the release still publishes and only
the tap update is skipped, so a release that appears green can still leave this repo on the old
version. Check that `Casks/awsd.rb` moved after each release.

### Testing tap

Homebrew no longer accepts a file path for either of these, so both take the qualified cask name
and read from your local clone of the tap:

```sh
brew audit --cask radiusmethod/awsd/awsd     # silent means it passed
brew install --cask radiusmethod/awsd/awsd
```

Those read the tap clone Homebrew manages, not this working copy. To test an uncommitted change,
edit it there:

```sh
brew --repo radiusmethod/awsd    # /opt/homebrew/Library/Taps/radiusmethod/homebrew-awsd
```

To reproduce what a release would write without publishing anything, run this in an awsd checkout
and read `dist/homebrew/Casks/awsd.rb`:

```sh
goreleaser release --snapshot --clean --skip=publish
```

### Upgrading from the formula

Homebrew does not cleanly move an installed formula to a cask of the same name. If `brew upgrade`
complains, reinstall:

```sh
brew uninstall awsd
brew install radiusmethod/awsd/awsd
```
