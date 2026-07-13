# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '848e82a15068393141cf55210b895f16bd7846954300dd906b7f56ffd52dcdf2'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
