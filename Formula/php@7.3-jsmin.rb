require_relative "../lib/php_pecl_formula"

class PhpAT73Jsmin < PhpPeclFormula
  extension_dsl "Extension for JavaScript minification"

  url "https://pecl.php.net/get/jsmin-3.0.0.tgz"
  sha256 "f936ccd01df91eb73236ecfdacfd1e2d3de92e7e776ad5d0f3c6f65d17948783"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "12bdad00f61aaa0e01961f399e59f9fef18fa67f575762306f5ba2d5c16a02a1"
    sha256 cellar: :any_skip_relocation, mojave:   "fd9459f59f1f1cb78bcf178b1a58b95376b8681e08c462cc824ada4dcfc04597"
  end

  disable! date: "2021-12-06", because: :versioned_formula
end
