# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.1"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.1/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '7e6a5d4f74269a73a5ea55f7a0705bb038d4cb5c0b51d6b8a73a26d11534286c'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
