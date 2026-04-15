cask "bitstraum-usage" do
  version "1.1.0"
  sha256 "b802f3d578ffef38bb4eabe66f5bf0c4ff1f0a9178ca59565d4b8a802de1b18c"

  url "https://github.com/mskre/bitstraum-usage/releases/download/v#{version}/BitstraumUsage-#{version}.zip"
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
