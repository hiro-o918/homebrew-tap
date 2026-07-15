# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.13"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.13/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '720841e535d5e56f4cd16a7d7645a7579c67954a47e67ba383adc022f1d9b626'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
