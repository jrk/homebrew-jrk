class MailActOn < Cask
  url 'http://www.indev.ca/prereleases/MailActOn3/MailActOn3.0.5b1300_20140429-1809.dmg'
  homepage 'http://www.indev.ca/MailActOn'
  version '3.0.5b1300_20140429-1809'
  sha256 'abb653b9aab15ca9eaa2cde4f1d79fce6afe635a96c9a2fa4f8c6080d5d3954a'
  caskroom_only true
  caveats do
    manual_installer 'Install Mail Act-On.app'
  end
end
