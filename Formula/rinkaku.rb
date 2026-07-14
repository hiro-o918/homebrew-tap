# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.4"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.4/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'a83f4d47bf238d5144036244b1d1d68d1cc7b2c6f3467e69bac84288cae3c02f'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
