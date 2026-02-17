cask "fnx" do
  version "1.0.4"
  sha256 "3d863b483fa3f4a809b0b28d243f5dc2b16fcf0b11ec9ad766d3f7cb918cdaea"

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
