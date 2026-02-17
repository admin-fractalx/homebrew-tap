cask "fnx" do
  version "1.0.3"
  sha256 "dc271ca8a3a6a71e3654209306d80cc03e407cb02f1068c874e3416b649a6ac3"

  url "https://github.com/admin-fractalx/fnx-mac/releases/download/v#{version}/FnX-#{version}.zip"
  name "FnX"
  desc "Voice-to-text for macOS — hold Fn to record, release to transcribe"
  homepage "https://github.com/admin-fractalx/fnx-mac"

  depends_on macos: ">= :ventura"

  app "FnX.app"

  zap trash: [
    "~/Library/Preferences/com.fnx.app.plist",
  ]
end
