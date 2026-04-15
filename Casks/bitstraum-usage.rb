cask "bitstraum-usage" do
  version "1.1.0"
  sha256 "66da3224dcb5b2cd549d9ff0def7d13569522ecc945d741dceba93e80ac2340a"

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
