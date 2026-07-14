# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.3"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.3/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '91658187a9b5e17f1d6228a1f7a4e677e1caf790c9a09ea7db8c9915b50aa177'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
