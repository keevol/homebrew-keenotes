# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!


# this is for cli install

class KeeNotes < Formula
  desc "A Privacy-First Personal Knowledgebase Tool "
  homepage "https://github.com/keevol/keenotes-desktop"
  url "https://github.com/keevol/keenotes-desktop/releases/download/v1.2.2/KeeNotes.Desktop-1.2.2.dmg"
  sha256 "e3731d376958ba68e927f876b27ade5a9d049461d59af2c4c32dc0df6db12a75"
  version "1.2.2"

  def install
    bin.install "keenotes"
  end
end