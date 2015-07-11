class Terra < Formula
  desc "Terra language"
  homepage "http://terralang.org"
  url "https://github.com/zdevito/terra/releases/download/release-2015-03-12/terra-OSX-x86_64-04fb3e2.zip"
  version "2015-03-12"
  sha256 "475e046e52ba4d2582d059acadb2ce876c47593aafa3e1311fb6ba5ae1827c99"

  def install
    lib.install 'libterra.so'
    bin.install 'terra'
    system 'mkdir', 'inc'
    system 'mv', 'include', 'inc/terra'
    include.install 'inc/terra'
    system 'mkdir', '-p', 'share/terra'
    system 'mv', 'tests', 'share/terra/tests'
    share.install 'share/terra'
  end

  test do
    #system "#{bin}/terra", "#{share}/terra/tests/run" # doesn't work yet
    system "false"
  end
end
