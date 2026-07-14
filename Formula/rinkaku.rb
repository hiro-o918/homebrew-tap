# frozen_string_literal: true

class Rinkaku < Formula
    desc "Condense PR diffs into signatures and their dependencies for LLM-friendly review"
    homepage "https://github.com/hiro-o918/rinkaku"
    version "0.6.2"
    license "MIT"
    url "https://github.com/hiro-o918/rinkaku/releases/download/v0.6.2/rinkaku-x86_64-apple-darwin.tar.gz"
    sha256 'c687f5cb7f7f4b3c8aef347544932edbfc61b3d55fca60c694d6c8b261593c88'

    def install
        bin.install "rinkaku"
    end

    test do
        system "#{bin}/rinkaku", "--version"
    end
end
