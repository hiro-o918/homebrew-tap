# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.6"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.6/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'e5c7624960c3a42be1dccd6944be0dd70a5e9bf466b48ad64db4530b99229e99'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
