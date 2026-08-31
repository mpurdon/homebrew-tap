cask "sleipnir-aws" do
  version "0.1.3"
  sha256 "7b24fafe960d9319ebcc8540b5077e81b228ff57f90c20b17d55aeb4447ad677"

  url "https://github.com/mpurdon/sleipnir/releases/download/v#{version}/sleipnir_#{version}_aarch64.app.tar.gz"
  name "Sleipnir"
  desc "Norse-themed AWS SSO credential manager with one-click project engagement"
  homepage "https://github.com/mpurdon/sleipnir"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "sleipnir.app"

  zap trash: [
    "~/.sleipnir",
    "~/Library/Logs/dev.purdonmoi.sleipnir",
  ]

  caveats <<~EOS
    Signed and notarized — no Gatekeeper workarounds needed.
    Open sleipnir, log in to your org, and engage away.
  EOS
end
