# typed: false
# frozen_string_literal: true

class Schemahero < Formula
  desc "Kubernetes-native database schema management"
  homepage "https://schemahero.io"
  version "0.23.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_amd64.tar.gz"
      sha256 "68191d86836af8186973f0efe5d8c11e774727f8ea0db9e57e7fe2262563c5ec"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_arm64.tar.gz"
      sha256 "ea96744e263e06a5de04a2b84648c8c3eef0223d243c8bd6f0f8f8c2f7025615"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_amd64.tar.gz"
      sha256 "e2ded2f5d4b692ef0b8047967d92430c78f7a34a9c08807c8718091e0a5880c3"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_arm64.tar.gz"
      sha256 "4be456fa3ef5c6398475d21736df07a9fb0e73e73f87ab40654f89d5da0979d7"
    end
  end

  def install
    bin.install "schemahero"
  end

  test do
    system "#{bin}/schemahero", "version"
  end
end
