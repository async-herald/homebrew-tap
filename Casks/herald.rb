cask "herald" do
  version "0.2.3"
  sha256 "cd5cdaaa3bd6ea953e9ba3cf9583f9dbc7bb9f3d6528683f00d4066d42c1bebc"

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

  # L'app se met à jour elle-même (mise à jour intégrée) : brew upgrade la laisse faire.
  auto_updates true
  # App universelle (Apple Silicon et Intel), macOS 11 minimum (LSMinimumSystemVersion).
  depends_on macos: ">= :big_sur"

  app "Herald.app"

  zap trash: [
    "~/Library/Application Support/fr.itsasync.herald.desktop",
    "~/Library/Caches/fr.itsasync.herald.desktop",
    "~/Library/Preferences/fr.itsasync.herald.desktop.plist",
    "~/Library/Saved Application State/fr.itsasync.herald.desktop.savedState",
  ]
end
