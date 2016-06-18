class Terra < Formula
  desc "Terra language"
  homepage "http://terralang.org"
  url "https://github.com/zdevito/terra/releases/download/release-2016-03-25/terra-OSX-x86_64-332a506.zip"
  version "2016-03-25"
  sha256 "e1538266dfeb6b7545bf5f63f49dee23cf26819b0dd5d5855058d4298458e23f"

  def install
    lib.install 'lib/libterra.a'
    lib.install 'lib/terra.so'
    bin.install 'bin/terra'
    include.install 'include/terra'
    share.install 'share/terra'
  end

  test do
    res = `echo "print 'hi'" | "#{bin}/terra" -`
    return res.strip == 'hi'
  end
end
