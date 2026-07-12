# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.4.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.4.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'f365c6d564f914c7800e181da125bd4bc6ad3978b0c171cc472fa2ef3d4fcfe9'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
