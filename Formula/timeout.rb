class Timeout < Formula
  desc "C# implementation of the GNU timeout command"
  homepage "https://github.com/spgennard/cs-timeout"
  version "1.0.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/spgennard/cs-timeout/releases/download/v1.0.0/timeout-1.0.0-osx-arm64.tar.gz"
    sha256 "2f9f2151615fc3cb4d9c5548c19db5ea9b6af47e3badd42a7db679b056dc94d6"
  else
    url "https://github.com/spgennard/cs-timeout/releases/download/v1.0.0/timeout-1.0.0-osx-x64.tar.gz"
    sha256 "033bb16abac103265153e23bde00fa1c00570e213288e18454d428fc7e2ef6a9"
  end

  def install
    bin.install "timeout"
  end

  test do
    # Test basic functionality
    assert_match "Usage:", shell_output("#{bin}/timeout --help 2>&1")
    
    # Test that it can run a simple command with timeout
    output = shell_output("#{bin}/timeout 1s echo 'test' 2>&1")
    assert_match "test", output
    
    # Test version output if available
    system "#{bin}/timeout", "--version"
  end
end
