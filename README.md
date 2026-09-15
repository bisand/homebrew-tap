# bisand/tap

Homebrew casks for [squint](https://github.com/bisand/squint).

```bash
brew trust --tap bisand/tap
```

```bash
brew install --cask bisand/tap/squint
```

Homebrew loads casks from a tap outside its own only once the tap is trusted,
which is the first command.

The app goes to `/Applications` and `squint` onto the PATH, so
`squint big.log` opens a file from a terminal. The app is signed with a
Developer ID and notarized by Apple.

squint's release workflow updates the cask's version and checksum when a
release is published.
