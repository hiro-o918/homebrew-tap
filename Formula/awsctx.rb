# frozen_string_literal: true

class Awsctx < Formula
    desc "Context Manager for AWS Profiles"
    homepage "https://github.com/hiro-o918/awsctx"
    version "0.4.0"
    license "MIT"
    url "https://github.com/hiro-o918/awsctx/releases/download/v0.4.0/awsctx_v0.4.0_x86_64-apple-darwin.tar.gz"
    sha256 '4d99e79ad8e8d1c831a96a1ff09ce00b0442f39b6f9e7995b60e6d6920820db5'

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
