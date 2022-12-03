require_relative "../lib/php_pecl_formula"

class PhpAT73Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.3.0.tgz"
  sha256 "0114b146e1036d75a83cd438200df73db030b5d12b8c687843809d1d0cec91be"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "f70df720b605863b98e9f5f9b6704d6832e903bbf8a193868b0cf7cdabbdcc39"
    sha256 cellar: :any_skip_relocation, mojave:   "a91b5b3863eb5e9e58ebb36ff62b171ab4fc555eedc4033d407a061d7f8c821a"
  end

  disable! date: "2021-12-06", because: :versioned_formula
end
