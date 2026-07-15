# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.15"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.15/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '6942e0261bf121164a276ad92a6166212fb82d6370491d50786562dc926159c8'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
