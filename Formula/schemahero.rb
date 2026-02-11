# typed: false
# frozen_string_literal: true

class Schemahero < Formula
  desc "Kubernetes-native database schema management"
  homepage "https://schemahero.io"
  version "0.23.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_amd64.tar.gz"
      sha256 "cc38fa0b452e8b2600bbcb08e0364a702086f31e8e37c4adabcc9fb6e1dd2f5d"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_arm64.tar.gz"
      sha256 "8501577dd46b06f0a3441f4336c8405d99eea951ab9848f848ff6f82437c5bb6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_amd64.tar.gz"
      sha256 "f7309286b545acfcd25d8c7a9280199e3b34d7fd991f7fac1833a0ad22d797f9"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_arm64.tar.gz"
      sha256 "26858d94832f6308b70d74bd96169a311d766e44b73c8b760df698c7a252e6ee"
    end
  end

  def install
    bin.install "schemahero"
  end

  test do
    system "#{bin}/schemahero", "version"
  end
end
