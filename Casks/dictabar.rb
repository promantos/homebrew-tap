cask "dictabar" do
  version "0.6.27"
  sha256 "b766e21431b089f0b1d5b4eaba3a1b4cb2453f3436a2f45e643900def5e88f22"

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
