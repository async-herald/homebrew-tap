cask "herald" do
  version "0.1.8"
  sha256 "d4915fedcfb9ccf92ec05a490bd0cfe6c4d3992dced279839db216c7471cfa95"

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
  depends_on arch: :arm64
  depends_on :macos

  app "Herald.app"

  zap trash: [
    "~/Library/Application Support/fr.itsasync.herald.desktop",
    "~/Library/Caches/fr.itsasync.herald.desktop",
    "~/Library/Preferences/fr.itsasync.herald.desktop.plist",
    "~/Library/Saved Application State/fr.itsasync.herald.desktop.savedState",
  ]
end
