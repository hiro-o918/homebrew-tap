# frozen_string_literal: true

class Awsctx < Formula
    desc "Context Manager for AWS Profiles"
    homepage "https://github.com/hiro-o918/awsctx"
    version "0.5.0"
    license "MIT"
    url "https://github.com/hiro-o918/awsctx/releases/download/v0.5.0/awsctx_v0.5.0_x86_64-apple-darwin.tar.gz"
    sha256 '62eb813880957d9f5e04edd5a53b7ce3aa6cf605d352b953d298775e4954a36b'

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
