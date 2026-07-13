# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.5.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.5.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'de33cfa9fd135632138ca994b9626fa6e4e89bc7130650b55d6429a7ed4ffe81'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
