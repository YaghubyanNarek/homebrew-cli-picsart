require "language/node"
class CliPicsart < Formula
  desc "Description of CLI tool"
  homepage "https://github.com/YaghubyanNarek/cli-picsart"
  url "https://github.com/YaghubyanNarek/cli-picsart/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e9374cb410207bbc1b419f120f7cf1bc2dd192296a02295debb0723962d38e37"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/cli-picsart", "--version"
  end
end

