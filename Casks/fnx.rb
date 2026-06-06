cask "fnx" do
  version "1.0.7"
  sha256 "45f88499b63f959293901b54b3ffdd0b61058048f925e69451ba13f1f7d51c16"

  url "https://github.com/admin-fractalx/fnx-mac/releases/download/v#{version}/FnX-#{version}.zip"
  name "FnX"
  desc "Voice-to-text for macOS — hold Fn to record, release to transcribe"
  homepage "https://github.com/admin-fractalx/fnx-mac"

  depends_on macos: ">= :ventura"

  app "FnX.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "\#{appdir}/FnX.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.fnx.app.plist",
  ]
end
