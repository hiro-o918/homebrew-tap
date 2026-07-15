# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.11"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.11/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '8988be066e4159eb7109c4d970cf822ba49188f2a613d1623fb4275e911dcf5d'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
