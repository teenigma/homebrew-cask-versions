cask "discord-development" do
  version "0.0.8738"
  sha256 "7afb08659442a725ca090262e24452d80898f473fa29a043ade414241541a64b"

  url "https://dl-development.discordapp.net/apps/osx/#{version}/DiscordDevelopment.dmg",
      verified: "dl-development.discordapp.net/"
  name "Discord Development"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/development?platform=osx"
    strategy :header_match
  end

  auto_updates true

  app "Discord Development.app"

  zap trash: [
    "~/Library/Application Support/discorddevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment.ShipIt",
    "~/Library/Cookies/com.hnc.DiscordDevelopment.binarycookies",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.helper.plist",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.plist",
    "~/Library/Saved Application State/com.hnc.DiscordDevelopment.savedState",
  ]
end