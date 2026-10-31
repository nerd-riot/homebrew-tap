cask "dbnerd" do
  version "1.2.5"
  sha256 "7d778daf768435184a537dde31eed17ed80ceaa9296546098b2bad28a67471ad"

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
  depends_on :macos

  app "DBNerd.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-cr", "{{appdir}}/DBNerd.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.dbnerd.desktop",
    "~/Library/Caches/com.dbnerd.desktop",
    "~/Library/Preferences/com.dbnerd.desktop.plist",
    "~/Library/Saved Application State/com.dbnerd.desktop.savedState",
    "~/Library/WebKit/com.dbnerd.desktop",
  ]
end
