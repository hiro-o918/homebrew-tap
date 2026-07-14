# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.5"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.5/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '5c17321df1061bc3030070d3b50f2e5f18fb37c333da08ea82e20159377317a1'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
