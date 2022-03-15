# frozen_string_literal: true

class Awsctx < Formula
    desc "Context Manager for AWS Profiles"
    homepage "https://github.com/hiro-o918/awsctx"
    version "0.3.1"
    license "MIT"
    url "https://github.com/hiro-o918/awsctx/releases/download/v0.3.1/awsctx_v0.3.1_x86_64-apple-darwin.tar.gz"
    sha256 'd4ee2ac6bbe1759b7e7a7d1f1d885611d9b4ebcfa3f9f61a9890b5814b7f2fdb'

    def install
        bin.install "awsctx"
        # Install bash and zsh completion
        output = Utils.safe_popen_read("#{bin}/awsctx", "completion", "--shell", "bash")
        (bash_completion / "awsctx").write output
        output = Utils.safe_popen_read("#{bin}/awsctx", "completion", "--shell", "zsh")
        (zsh_completion / "_awsctx").write output
    end

    test do
        system "#{bin}/awsctx", "--version"
    end
  end
