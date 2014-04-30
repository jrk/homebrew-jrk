require "formula"

class LlvmBinary < Formula
  homepage "http://llvm.org/releases/"
  url "http://llvm.org/releases/3.4/clang+llvm-3.4-x86_64-apple-darwin10.9.tar.gz"
  version "3.4"
  sha1 "4b7a4fbabffc1bda669f7ff961ab072ffc467fed"

  def install
    prefix.install 'bin'
    prefix.install 'lib'
    prefix.install 'include'
    prefix.install 'docs'
    prefix.install 'share'
  end

  test do
    system "#{bin}/llvm-config --version"
  end
end
