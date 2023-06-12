class Goscript < Formula
  desc "Dynamically Typed Language Written in Go"
  homepage "https://github.com/hyperioxx/GoScript"
  url "https://github.com/hyperioxx/GoScript/archive/v0.1.0-alpha5.tar.gz"
  sha256 "c58c73876d95a2843db0284e46f6d774ac63f878d9080c4394b8828ba9c2fc31"
  license "GPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"goscript", "./cmd/goscript"
  end

  test do
    system bin/"goscript", "--version"
  end
end