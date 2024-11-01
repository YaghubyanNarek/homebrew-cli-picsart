require "language/node"

class CliPicsart < Formula
  desc "CLI tool for interacting with the Picsart API"
  homepage "https://github.com/YaghubyanNarek/cli-picsart"
  url "https://github.com/YaghubyanNarek/cli-picsart/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e9374cb410207bbc1b419f120f7cf1bc2dd192296a02295debb0723962d38e37"

  # Specify the dependency on Node.js
  depends_on "node"

  def install
    # Install the npm packages into libexec
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    
    # Create symlinks in the bin directory
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # Test the installed CLI tool
    system "#{bin}/cli-picsart", "--version"
  end
end

