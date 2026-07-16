# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.16"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.16/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '613098e9de744256fd547f5d600727b2c62c8d82cc771d20330d7aa4b605f177'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
