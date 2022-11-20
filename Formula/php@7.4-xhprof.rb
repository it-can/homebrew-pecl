require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.8.tgz"
  sha256 "c88126717e895e9cbd15d49b8382238b69aee668adf8ae88cb9886fb083fa9f5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "7704921a632032dfc437dca7c40c4ebb5b7ed056b72f1ce284aa7047f5c4e669"
    sha256 cellar: :any_skip_relocation, big_sur:  "3e566c1746c63835c78160f802d3472c0ab4ecd6c6a9656a36cbe747509d48b6"
    sha256 cellar: :any_skip_relocation, catalina: "0e96e3e1ffb2c7fc5c33c98edbf35eca16dd5b1c4424045de7f013f42bb25cbd"
  end

  source_dir "#{extension}-#{version}/extension"
end
