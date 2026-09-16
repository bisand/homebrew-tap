cask "squint" do
  version "0.1.8"
  sha256 "d2f45f6f26202655e088be2388cf82527f687f323a41487e60aca7f0f9359c9f"

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
