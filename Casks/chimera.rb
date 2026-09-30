cask "chimera" do
  version "1.0.0"
  sha256 :no_check   # 由 Chimera 发版流水线自动替换为 DMG 实际 SHA256

  url "https://github.com/Rene-Zhou/Chimera/releases/download/v#{version}/Chimera.dmg"
  name "Chimera"
  desc "Modern native CHM reader for macOS"
  homepage "https://github.com/Rene-Zhou/Chimera"
  depends_on macos: ">= :sonoma"

  app "Chimera.app"

  zap trash: [
    "~/Library/Application Support/Chimera",
    "~/Library/Caches/Chimera",
  ]
end
