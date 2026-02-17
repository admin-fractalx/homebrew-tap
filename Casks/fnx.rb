cask "fnx" do
  version "1.0.2"
  sha256 "6b819eea5170400c231c94c988306d78b71dfd8f637c90c0bdcb9bc0788a854a"

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
