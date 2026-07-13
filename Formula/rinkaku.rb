# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.5.1"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.5.1/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'aedd60cc685ce26a5242a6a7964929a04b866d558d779368797477a07a74353a'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
