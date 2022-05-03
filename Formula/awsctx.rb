# frozen_string_literal: true

class Awsctx < Formula
    desc "Context Manager for AWS Profiles"
    homepage "https://github.com/hiro-o918/awsctx"
    version "0.4.1"
    license "MIT"
    url "https://github.com/hiro-o918/awsctx/releases/download/v0.4.1/awsctx_v0.4.1_x86_64-apple-darwin.tar.gz"
    sha256 'f87a9461ec81b5038f96b4a2ce7df18fc3ab3baa4490cb05ed5dbee6335d4cd6'

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
