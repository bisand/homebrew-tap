cask "squint" do
  version "0.1.12"
  sha256 "db292dd504408c25ac834a4c2545f59191ba1760d61c5282f20c2ff6b6f0d912"

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
