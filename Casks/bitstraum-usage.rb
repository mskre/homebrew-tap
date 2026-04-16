cask "bitstraum-usage" do
  version "1.3.3"
  sha256 "deb43dc820e2d23a64e1526359c77964500c735ef7fb7e738e4d9626338b1716"

  url "https://github.com/mskre/bitstraum-usage/releases/download/v1.3.3/BitstraumUsage-1.3.3.zip"
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
