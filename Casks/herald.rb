cask "herald" do
  version "0.1.6"
  sha256 "3765214b62bfff8ca687dce610f51916b64f4845abdab3f6dc0abf74bf1c4e3e"

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
