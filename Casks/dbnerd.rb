cask "dbnerd" do
  version "1.2.2"
  sha256 "2f5507850402347dd293862a630865e253e9fd5fa0f684d7cdd269c9df54543e"

  url "https://github.com/nerd-riot/db-nerd/releases/download/v#{version}/DBNerd_#{version}_aarch64.dmg"
  name "DBNerd"
  desc "Modern, high-performance database client built with Tauri and React"
  homepage "https://github.com/nerd-riot/db-nerd"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "DBNerd.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DBNerd.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.dbnerd.desktop",
    "~/Library/Caches/com.dbnerd.desktop",
    "~/Library/Preferences/com.dbnerd.desktop.plist",
    "~/Library/Saved Application State/com.dbnerd.desktop.savedState",
    "~/Library/WebKit/com.dbnerd.desktop",
  ]
end
