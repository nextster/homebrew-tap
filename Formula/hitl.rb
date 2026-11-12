class Hitl < Formula
  desc "Agent plans, questions and results, answered by a person in one window on the Mac"
  homepage "https://github.com/nextster/hitl-releases"
  url "https://github.com/nextster/hitl-releases/releases/download/v0.1.1/hitl-0.1.1.tar.gz"
  sha256 "0c8917b21138b1ca2e50e8372a8105771518e87696c5473c855e825fd02fed1a"

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
    assert_match "hitl 0.1.1", shell_output("#{bin}/hitl --version")
  end
end
