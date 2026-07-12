# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.4.1"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.4.1/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '255ad986286a23d6a8b938c26ba683a22794f5c453a2d201d038e054f4278dd7'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
