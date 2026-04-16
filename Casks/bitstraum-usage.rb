cask "bitstraum-usage" do
  version "1.3.2"
  sha256 "b3a801302515ed7ca00ad383a3a316f5c7fd7971cdf26887679cdc37c84659ba"

  url "https://github.com/mskre/bitstraum-usage/releases/download/v1.3.2/BitstraumUsage-1.3.2.zip"
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
