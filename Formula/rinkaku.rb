# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.2.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.2.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '498ca963142fd3437f22ac8254662914089c937cf8d0314414d870f543c864c7'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
