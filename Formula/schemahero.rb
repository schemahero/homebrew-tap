# typed: false
# frozen_string_literal: true

class Schemahero < Formula
  desc "Kubernetes-native database schema management"
  homepage "https://schemahero.io"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_amd64.tar.gz"
      sha256 "baddeb063646a1274c8a34a1bcd6b6de254d61f87b17e19f881faf5000e82e70"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_arm64.tar.gz"
      sha256 "7e095c4849fb8edd695319483930ad3a78bc17885ee6e4b64662d570583035e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_amd64.tar.gz"
      sha256 "67737b35cbea6f87500847c0f45b60f2e46f2a7cd0e84c05cd015459229d50e5"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_arm64.tar.gz"
      sha256 "a2c2205f5e2d91bf0f7248362c418cc02d36de257da2d7377e909563ba88c27e"
    end
  end

  def install
    bin.install "schemahero"
  end

  test do
    system "#{bin}/schemahero", "version"
  end
end
