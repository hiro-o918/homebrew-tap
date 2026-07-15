# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.12"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.12/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 '2891d8dd8715947c8c05e1166bf00f71b1d67beb4d83a29c458116c53dd1ff3e'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
