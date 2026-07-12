# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.3.1"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.3.1/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '9ecc80cb5ab72161b4edc9140c6d9d7216e72b27e42c0180421303245f500d5b'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
