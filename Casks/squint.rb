cask "squint" do
  version "0.1.10"
  sha256 "e73235aebf0d0eae50331d157bf029213d29900847604ed51d82e4cd912ad9f9"

  url "https://github.com/bisand/squint/releases/download/v#{version}/squint-#{version}-macos-universal.dmg"
  name "squint"
  desc "Text editor for files too big for text editors"
  homepage "https://github.com/bisand/squint"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "squint.app"
  binary "#{appdir}/squint.app/Contents/MacOS/squint"

  zap trash: "~/Library/Application Support/squint"
end
