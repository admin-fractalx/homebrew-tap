cask "fnx" do
  version "1.0.0"
  sha256 "6db5193a4e6c248decf542380c0e8d43b84dee63df24477e70a332ff816d13be"

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
