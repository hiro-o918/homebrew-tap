# frozen_string_literal: true

class Awsctx < Formula
    desc "Context Manager for AWS Profiles"
    homepage "https://github.com/hiro-o918/awsctx"
    version "0.3.0"
    license "MIT"
    url "https://github.com/hiro-o918/awsctx/releases/download/v0.3.0/awsctx_v0.3.0_x86_64-apple-darwin.tar.gz"
    sha256 '5553efe340c8ee8cf9d6f387ffa5881534e5445c0e6f23183ec17f20a1a02c72'

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
