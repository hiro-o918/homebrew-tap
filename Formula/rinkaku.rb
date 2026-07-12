# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.2.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.2.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'beea56508994b2d1b96fe3a261e847b8c4f90ad7e641b55bca307e69121a910b'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
