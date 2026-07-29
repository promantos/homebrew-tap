cask "dictabar" do
  version "0.6.17"
  sha256 "832e5d0bada3ef8ccc0eaaf7b9d5b67beacaae28a09c9808a79c9b287900ef56"

  url "https://github.com/promantos/dictabar-updates/releases/download/v#{version}/Dictabar-#{version}.zip"
  name "Dictabar"
  desc "Private voice typing with local and bring-your-own-key speech models"
  homepage "https://github.com/promantos/dictabar"

  livecheck do
    url "https://github.com/promantos/dictabar-updates/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Dictabar.app"

  zap trash: [
    "~/Library/Application Support/Dictabar",
    "~/Library/Caches/qwen3-speech",
    "~/Library/Preferences/app.dictabar.Dictabar.plist",
  ]
end
