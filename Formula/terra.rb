class Terra < Formula
  desc "Terra language"
  homepage "http://terralang.org"
  url "https://github.com/zdevito/terra/releases/download/release-2015-08-03/terra-OSX-x86_64-84bbb0b.zip"
  version "2015-08-03"
  sha256 "53b2473629c8ec03046d189b7ebfa13b12c2dabc5f0b2731fe7e4cc4abf7c82d"

  def install
    lib.install 'lib/libterra.a'
    lib.install 'lib/libterra_dynamic.so'
    bin.install 'bin/terra'
    include.install 'include'
    share.install 'share/terra'
  end

  test do
    Dir.chdir("#{share}/terra/tests") do
      system "#{bin}/terra", "run"
    end
    #system "false"
  end
end
