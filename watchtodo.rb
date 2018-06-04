class Watchtodo < Formula
  desc "watch todo on your directory, in other tty"
  homepage "https://github.com/Cj-bc/watchtodo"
  version "0.3.0"
  url "https://github.com/Cj-bc/watchtodo/archive/0.3.0.tar.gz"


  def install
    system "mv", "watchtodo.sh", "watchtodo"
    bin.install "watchtodo"
  end

  def caveats; <<~EOT
    please add below to `~/.bashrc` or something source it.
    ```
      export PS1="${PS1} \$(echo \$(pwd) >~/.watchtodo/pwd 2>/dev/null)"
    ```
    EOT
  end
end
