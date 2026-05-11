# typed: false
# frozen_string_literal: true

class KubectlSchemahero < Formula
  desc "Kubectl plugin for SchemaHero database schema management"
  homepage "https://schemahero.io"
  version "0.25.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_amd64.tar.gz"
      sha256 "e51b907d23469dda08db1eee80b06c1576647f1885501e5139e55b09ba396361"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_arm64.tar.gz"
      sha256 "6100de5f822c267fc599c93d148cec515be71e690e3ed45493314253ba7ee4cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_amd64.tar.gz"
      sha256 "db49e4c78624e18821498f46341c812698cb29d5a73d93bae75d03356bc679c9"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_arm64.tar.gz"
      sha256 "32d7b2acb0f590c876a8ca4fe5558e0be62e424194b552e50216569ac2a46528"
    end
  end

  def install
    bin.install "kubectl-schemahero"
  end

  test do
    system "#{bin}/kubectl-schemahero", "version"
  end
end
