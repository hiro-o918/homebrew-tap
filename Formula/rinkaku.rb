# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.10"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.10/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '69334b2903196a26072b501fc278ecff1ce9d9181d4b503b150981d4912746ab'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
