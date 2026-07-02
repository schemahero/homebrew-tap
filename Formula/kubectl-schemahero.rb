# typed: false
# frozen_string_literal: true

class KubectlSchemahero < Formula
  desc "Kubectl plugin for SchemaHero database schema management"
  homepage "https://schemahero.io"
  version "0.25.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_amd64.tar.gz"
      sha256 "dde54f770edaba7cb572c39f684097b55cefb5029774a079a28e79245c23286b"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_arm64.tar.gz"
      sha256 "8f04616b8ba25871dcb226328f1922b23dd689242783ffb9796a22931c68e5ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_amd64.tar.gz"
      sha256 "2751d6619375b809c68bce23297182cf8e3b330fc81c6a6e5e653267f9619e86"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_arm64.tar.gz"
      sha256 "32b4c45f2d41ccff74d51d539fca70e7bccf8cb4535b16dfe3cfa466bcb0ee52"
    end
  end

  def install
    bin.install "kubectl-schemahero"
  end

  test do
    system "#{bin}/kubectl-schemahero", "version"
  end
end
