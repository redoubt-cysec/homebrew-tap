class ProvenanceDemo < Formula
  desc "Demo CLI showcasing supply chain security and provenance attestation"
  homepage "https://github.com/redoubt-cysec/provenance-template"
  url "https://github.com/redoubt-cysec/provenance-template/releases/download/v0.0.1-alpha.7/provenance-demo.pyz"
  version "0.0.1-alpha.7"
  sha256 "941f327df954fae8bbe2b46395c809a25673e9977c15f986ffbdfd5c5b0c44e7"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "provenance-demo.pyz" => "provenance-demo"
  end

  test do
    system "#{bin}/provenance-demo", "--version"
    system "#{bin}/provenance-demo", "hello", "world"
  end
end
