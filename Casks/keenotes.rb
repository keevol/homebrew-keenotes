cask "keenotes" do
  version "1.2.2"
  sha256 "e3731d376958ba68e927f876b27ade5a9d049461d59af2c4c32dc0df6db12a75"

  url "https://github.com/keevol/keenotes-desktop/releases/download/v1.2.2/KeeNotes.Desktop-1.2.2.dmg"
  # appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
  name "keenotes"
  desc "A Privacy-First Personal Knowledgebase Tool"
  homepage "https://github.com/keevol/keenotes-desktop"

  auto_updates true
  # conflicts_with cask: "1password-beta"
  # depends_on macos: ">= :high_sierra"

  app "KeeNotes Desktop.app"


  postflight do
    # remove quarantine against the application: `sudo xattr -d com.apple.quarantine /Applications/KeeNotes\ Desktop.app`
    system_command '/usr/bin/xattr',
                   args: ['-d com.apple.quarantine', "#{appdir}/KeeNotes Desktop.app"],
                   sudo: true
  end
  
  # zap trash: [
  #   "~/Library/Application Scripts/*.agilebits.onepassword*",
  #   "~/Library/Containers/*.agilebits.onepassword*",
  #   "~/Library/Group Containers/2BUA8C4S2C.com.agilebits",
  #   "~/Library/Logs/1Password",
  #   "~/Library/Preferences/com.agilebits.onepassword*",
  # ]
end