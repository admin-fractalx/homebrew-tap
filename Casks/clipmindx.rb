cask "clipmindx" do
  version "0.0.4"
  sha256 "75a4f498b40fbe1fb616aecd94b350c395f9262c97bbddbef3a0412cccea2a33"

  url "https://github.com/admin-fractalx/clipmindx-mac/releases/download/v#{version}/ClipMindX-#{version}.zip"
  name "ClipMindX"
  desc "ClipMindX for macOS"
  homepage "https://github.com/admin-fractalx/clipmindx-mac"

  depends_on macos: ">= :sonoma"

  app "ClipMindX.app"

  zap trash: []
end
