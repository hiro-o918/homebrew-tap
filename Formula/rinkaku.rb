# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.8"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.8/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '65a36f9430ec8a85f31ecba6e6f6d2c987ee8ebdc63177f7f8c7dec7ba9dfdc4'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
