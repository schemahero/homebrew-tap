# typed: false
# frozen_string_literal: true

class KubectlSchemahero < Formula
  desc "Kubectl plugin for SchemaHero database schema management"
  homepage "https://schemahero.io"
  version "0.23.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_amd64.tar.gz"
      sha256 "f6bb08c02a6bcc79f7888f903a6eab239f1c78a13b5018579acca48722aa715c"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_arm64.tar.gz"
      sha256 "b7547e83bc401d38fa2e6c8d07c995423eae81bad20e77a9c18d3aefc32af6b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_amd64.tar.gz"
      sha256 "b83a247d544711b81d3e5b1bc6c7b24d33b2c9b1fa381bb118bf853870beef2f"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_arm64.tar.gz"
      sha256 "c31acc75a4edbc334fdedb74acde387fc0ebd40d7ad59b91bef1b538eedc49a3"
    end
  end

  def install
    bin.install "kubectl-schemahero"
  end

  test do
    system "#{bin}/kubectl-schemahero", "version"
  end
end
