cask "fnx" do
  version "1.0.5"
  sha256 "759a0f4950a95c665decef3acd0c6fed76bb04d8a93a2a9430e12b0e09046bdb"

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
