class Lidawake < Formula
  desc "Keep a Mac awake with the lid closed, with a guaranteed auto-off"
  homepage "https://github.com/mikey-relevanceai/lidawake"
  url "https://github.com/mikey-relevanceai/lidawake/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dc1b42911178dfb6b392fde9d84ec306f4efdd0308300893f845d61c65b8f97f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lidawake"
  end

  def caveats
    <<~EOS
      `lidawake on` and `lidawake off` run sudo; `lidawake status` does not.

      A hard reboot while armed kills the auto-off timer, and lid-close sleep
      stays disabled. `lidawake status` then reports "NO timer"; run
      `lidawake off` to restore normal lid-close sleep.
    EOS
  end

  test do
    # status only reads pmset state, so it runs without sudo. The machine's
    # current state varies, so match the line labels rather than their values.
    output = shell_output("#{bin}/lidawake status")
    assert_match "lid-close :", output
    assert_match "idle sleep:", output
  end
end
