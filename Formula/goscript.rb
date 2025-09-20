class Goscript < Formula
  desc "Dynamically Typed Language Written in Go"
  homepage "https://github.com/hyperioxx/GoScript"
  url "https://github.com/hyperioxx/goscript/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fb67be1639165423d80170938961cda56a6f29f348baa0bcd2de8533438c018b"
  license "GPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"goscript", "./cmd/goscript"
  end

  test do
    system bin/"goscript", "--version"
  end
end