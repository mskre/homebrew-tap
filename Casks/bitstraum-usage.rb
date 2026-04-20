cask "bitstraum-usage" do
  version "1.3.4"
  sha256 "d74189b3ed6ff784dda9a10a7a4786dcc3fb7d465970d1992a4bf39d78ce4df0"

  url "https://github.com/mskre/bitstraum-usage/releases/download/v1.3.4/BitstraumUsage-1.3.4.zip"
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
