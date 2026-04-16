cask "bitstraum-usage" do
  version "1.3.0"
  sha256 "4193cc515d6952e93ff1fa43677994938711dc7a47ca2091549908d92e1dec5b"

  url "https://github.com/mskre/bitstraum-usage/releases/download/v1.3.0/BitstraumUsage-1.3.0.zip"
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
