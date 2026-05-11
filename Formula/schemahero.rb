# typed: false
# frozen_string_literal: true

class Schemahero < Formula
  desc "Kubernetes-native database schema management"
  homepage "https://schemahero.io"
  version "0.25.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_amd64.tar.gz"
      sha256 "459cf46c8678034bd839262b4150877c6f3340c23a5f2dd05ccc58276f5555a2"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_arm64.tar.gz"
      sha256 "6f03508d0c2132a8c92de9c488fba096f2f3865d8ad2cfd4b6a2144ab36b474b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_amd64.tar.gz"
      sha256 "ab714a95ac706ce305a6532bbafcf3c6e730835d03b4fe338ab063b3785de325"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_arm64.tar.gz"
      sha256 "cbec2206c478c7dbb35b72c019e63d63c5b49c1043338e4920250a1c4ce3f95f"
    end
  end

  def install
    bin.install "schemahero"
  end

  test do
    system "#{bin}/schemahero", "version"
  end
end
