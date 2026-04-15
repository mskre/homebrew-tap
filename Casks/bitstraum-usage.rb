cask "bitstraum-usage" do
  version "1.2.0"
  sha256 "58cdebff256f070628125fef4b3c6493d1714e13f94df35f7e06bf219cc51b1b"

  url "https://github.com/mskre/bitstraum-usage/releases/download/v1.2.0/BitstraumUsage-1.2.0.zip"
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
