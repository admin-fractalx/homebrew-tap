cask "fnx" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/admin-fractalx/fnX/releases/download/v#{version}/FnX-#{version}.zip"
  name "FnX"
  desc "Voice-to-text for macOS — hold Fn to record, release to transcribe"
  homepage "https://github.com/admin-fractalx/fnX"

  depends_on macos: ">= :ventura"

  app "FnX.app"

  zap trash: [
    "~/Library/Preferences/com.fnx.app.plist",
  ]
end
