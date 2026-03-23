# typed: false
# frozen_string_literal: true

class KubectlSchemahero < Formula
  desc "Kubectl plugin for SchemaHero database schema management"
  homepage "https://schemahero.io"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_amd64.tar.gz"
      sha256 "46a24355ddb7906a93dd0272a0523befb12bb6419f43b2c9ca848c1301701c8f"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_darwin_arm64.tar.gz"
      sha256 "146838dde41b9c004ca1971de97034ce6e9de9c7601a8785fc590ccc64c8715d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_amd64.tar.gz"
      sha256 "081d646ac3406b90fde06d6246292430f7058992a4dbaee13fb691b950bbcda8"
    end
    on_arm do
      url "https://github.com/schemahero/schemahero/releases/download/v#{version}/kubectl-schemahero_linux_arm64.tar.gz"
      sha256 "4bbb45304bc687e1a7303c844861128f1615efbf3e689d78f563466d43fd9882"
    end
  end

  def install
    bin.install "kubectl-schemahero"
  end

  test do
    system "#{bin}/kubectl-schemahero", "version"
  end
end
