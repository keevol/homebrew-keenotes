cask "keenotes" do
  version "1.2.3"
  sha256 "f851f8bc965296dc0c4796dc53cd6e3dc0a4534856c268f8ed2f1de8b7aca9b2"
  url "https://github.com/keevol/keenotes-desktop/releases/download/v1.2.3/KeeNotes.Desktop-1.2.3.dmg"

  name "keenotes"
  desc "A Privacy-First Personal Knowledgebase Tool"
  homepage "https://github.com/keevol/keenotes-desktop"

  auto_updates true

  app "KeeNotes Desktop.app"

  postflight do
    # remove quarantine against the application: `sudo xattr -d com.apple.quarantine /Applications/KeeNotes\ Desktop.app`
    system_command '/usr/bin/xattr',
                   args: ['-d', 'com.apple.quarantine', "#{appdir}/KeeNotes Desktop.app"],
                   sudo: true
  end
end