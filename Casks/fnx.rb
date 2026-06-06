cask "fnx" do
  version "1.0.6"
  sha256 "892eb867691396faa571ba843ca3fd63429220ab449f99d262c1c97667fbf034"

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
