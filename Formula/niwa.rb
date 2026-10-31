class Niwa < Formula
  desc "Cozy idle garden for your terminal and menu bar"
  homepage "https://github.com/quiinthieu/niwa"
  url "https://github.com/quiinthieu/niwa/archive/eff016f1ec42095d8a539b6959e7cbf855aa17bb.tar.gz"
  version "0.1.0"
  sha256 "1c9e845623a0bceaa6b1a0567439137f5372d33f2dfebd9260ce571c1d64e545"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/quiinthieu/niwa.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/niwa")
  end

  test do
    ENV["NIWA_HOME"] = (testpath/"niwa-home").to_s
    assert_match version.to_s, shell_output("#{bin}/niwa --version")
    status_json = shell_output("#{bin}/niwa status --json")
    assert_match "\"schema_version\"", status_json
    system bin/"niwa", "peek"
    assert_path_exists testpath/"niwa-home"
  end
end
