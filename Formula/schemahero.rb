# typed: false
# frozen_string_literal: true

class Schemahero < Formula
  desc "Kubernetes-native database schema management"
  homepage "https://schemahero.io"
  version "0.23.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_amd64.tar.gz"
      sha256 "1a7f4a64524931e635b4d093328dd3b76161c5bff0362c6885b0e5bfafa2a8e3"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_darwin_arm64.tar.gz"
      sha256 "ae4d26e4824afd7d51e55d71229ef09c4e3ef8fc08cb3af8e60d01578d952e8d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_amd64.tar.gz"
      sha256 "89aae60757ffdb39292a8dce0daca33af06016cfa7f4e76863dbf39fae699ae5"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/schemahero_linux_arm64.tar.gz"
      sha256 "442b63f3eb3e10b1674b69787df8290df096d50df7bd5a55fd6deb7ad62acec2"
    end
  end

  def install
    bin.install "schemahero"
  end

  test do
    system "#{bin}/schemahero", "version"
  end
end
