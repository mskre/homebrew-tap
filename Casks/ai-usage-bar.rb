cask "ai-usage-bar" do
  version "1.0.0"
  sha256 "2ce81d2c9457890fa4938a75879f5becc425b1c1a81f58aaeb934d16b6a83497"

  url "https://github.com/mskre/homebrew-tap/releases/download/v#{version}/AIUsageBar-#{version}.zip"
  name "AI Usage Bar"
  desc "Menu bar app showing AI provider usage limits"
  homepage "https://github.com/mskre/ai-taskbar"

  depends_on macos: ">= :ventura"

  app "AI Usage Bar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AI Usage Bar.app"]
  end

  zap trash: [
    "~/Library/Application Support/AIUsageBar",
  ]
end
