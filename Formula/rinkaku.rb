# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.3.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.3.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'b7e0e68660b17a9edf98a2a30c8d263616fb8f3f1a1090bdd8208124bfeeab6b'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
