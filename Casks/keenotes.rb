cask "keenotes" do
  version "1.2.2"
  sha256 "14617fe50edcdaf3d3fbfc06bb456e6d2e301ec7378189a1266d8517027b1fd5"

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