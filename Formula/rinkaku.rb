# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.5.2"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.5.2/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'efa7d3db1c4e2dda91fc9bdda28ad8213a3e8497ee8dba6eb9a7fc10e24079b3'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
