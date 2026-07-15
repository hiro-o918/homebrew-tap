# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.9"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.9/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '36c537031f5ad29f442eabd5eb6f1d41946e10e5e07171a8a139645583bfcb3a'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
