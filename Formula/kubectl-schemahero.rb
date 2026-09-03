# typed: false
# frozen_string_literal: true

class KubectlSchemahero < Formula
  desc "Kubectl plugin for SchemaHero database schema management"
  homepage "https://schemahero.io"
  version "0.26.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_amd64.tar.gz"
      sha256 "724d86a38fa2da9baac53da49ceaef7b74c6f613b3f15573ee78009e5226e57f"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_arm64.tar.gz"
      sha256 "0f059dada989432b908c9fd3f1eb824e547f3abf755a3d862b3c937f9043255b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_amd64.tar.gz"
      sha256 "26018105014a71bdbb60f5966a4663472c06d1c77d94f4ba582775b39a286150"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_arm64.tar.gz"
      sha256 "1b609a7cb53af5695dd70329611ede48ae3be99165f295172a752123de7ef725"
    end
  end

  def install
    bin.install "kubectl-schemahero"
  end

  test do
    system "#{bin}/kubectl-schemahero", "version"
  end
end
