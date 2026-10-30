cask "squint" do
  version "0.1.14"
  sha256 "74da7a17ff8154ff679b9a268fdcf39ab6233896257bdb16a893a763cd876531"

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
