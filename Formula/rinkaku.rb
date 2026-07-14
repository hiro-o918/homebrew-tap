# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.7"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.7/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '181630946ca9f58b25a95110ff8087c5407818c57e4ce9abfe6a1b060b39ee79'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
