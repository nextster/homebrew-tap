class Hitl < Formula
  desc "Agent plans, questions and results, answered by a person in one window on the Mac"
  homepage "https://github.com/nextster/hitl-releases"
  url "https://github.com/nextster/hitl-releases/releases/download/v0.1.0/hitl-0.1.0.tar.gz"
  sha256 "feb3a8f0237e6b4f5f057d69eafd68c1a8581358a5e7aff511828a488c8d758b"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install Dir["*"]
    (bin/"hitl").write <<~SH
      #!/bin/sh
      export HITL_ROOT="#{opt_libexec}"
      exec "#{opt_libexec}/hitl" "$@"
    SH
  end

  def caveats
    <<~EOS
      Once, with the name the verdicts call you by (--she for the feminine forms):
        hitl setup --name Никита
      It puts the skill hitl where Claude Code and Codex find it. Run it again after an upgrade.
    EOS
  end

  test do
    assert_match "hitl 0.1.0", shell_output("#{bin}/hitl --version")
  end
end
