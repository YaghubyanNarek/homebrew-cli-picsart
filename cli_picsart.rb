require "language/node"

class CliPicsart < Formula
  desc "CLI tool for interacting with the Picsart API"
  homepage "https://github.com/YaghubyanNarek/cli-picsart"
  url "https://github.com/YaghubyanNarek/cli-picsart/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4006905ed4c9882937cbfa4dc0362061e2c8c591e501b04f6d620abc58b1a4fe"

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

