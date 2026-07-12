# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.1.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.1.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '0000000000000000000000000000000000000000000000000000000000000000'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
