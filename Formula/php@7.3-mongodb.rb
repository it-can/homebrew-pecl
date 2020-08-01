require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.0.tgz"
  sha256 "096f02f240f1c7108dbbc9b4cd93e53e0517c8a85aaf99ac2fdd368f149a23b1"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "3a04e4bd5056ccb28b2d5c6ee1d08f1fdd24c3e9de0cae5226ac598497c96899" => :catalina
    sha256 "0ae6232c571aed408bbeef051b8eedd41ca87bea699e93493a4dc1324d5f900e" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
