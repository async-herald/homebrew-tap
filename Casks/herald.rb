cask "herald" do
  version "0.1.5"
  sha256 "760a001d5df272395bc1df216f4eedf70e55d6ba0bc42904c893ef1116166bcd"

  url "https://pub-7e9db21348e6475e887bea715a5c979a.r2.dev/dmg/Async-Herald-#{version}.dmg",
      verified: "pub-7e9db21348e6475e887bea715a5c979a.r2.dev/"
  name "Async Herald"
  desc "Local code analysis for security, quality and vulnerable dependencies"
  homepage "https://herald.codes/"

  livecheck do
    url "https://api.herald.codes/heralds/desktop/latest?platform=macos"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Async Herald.app"

  zap trash: [
    "~/Library/Application Support/fr.itsasync.herald.desktop",
    "~/Library/Caches/fr.itsasync.herald.desktop",
    "~/Library/Preferences/fr.itsasync.herald.desktop.plist",
    "~/Library/Saved Application State/fr.itsasync.herald.desktop.savedState",
  ]
end
