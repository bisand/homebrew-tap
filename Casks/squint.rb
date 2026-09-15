cask "squint" do
  version "0.1.2"
  sha256 "595815aac49a049a28f3ead8acfa7a21c7ae37895fd091cec5fe70d0d56fccc4"

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
