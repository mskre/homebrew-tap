cask "bitstraum-usage" do
  version "1.0.0"
  sha256 "d026ae8f16d92ac0978a8b638f0ec899140f5e7d0fd06479171cdd74eaaf1b6b"

  url "https://github.com/mskre/homebrew-tap/releases/download/v#{version}/BitstraumUsage-#{version}.zip"
  name "Bitstraum Usage"
  desc "Menu bar app showing AI provider usage limits"
  homepage "https://github.com/mskre/bitstraum-usage"

  depends_on macos: ">= :ventura"

  app "Bitstraum Usage.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Bitstraum Usage.app"]
  end

  zap trash: [
    "~/Library/Application Support/BitstraumUsage",
  ]
end
