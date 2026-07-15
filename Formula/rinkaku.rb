# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.14"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.14/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'd4992e3088b81d61757e5bedcfb30eee112066cdda4a01f69ddfb46421888d64'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
