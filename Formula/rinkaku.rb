# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.5.3"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.5.3/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'b35f23310772d165978b13dae07e97b88c8204ca1cee8a0a190bc3151e2af02c'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
