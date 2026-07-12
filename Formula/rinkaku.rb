# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.1.0"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.1.0/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'ad2866df4374a33d9f7aa54b73afd1b8a3e8dcedaae2da32bbbd6901d73868e6'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
