cask "ai-usage-bar" do
  version "1.0.0"
  sha256 "ce4fc4c1b0042eb2fca0721d0ad2a6ebd7195836c09802a1cdec7e3a06292b33"

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
