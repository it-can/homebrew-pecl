require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.0.tgz"
  sha256 "0d9f670b021288bb6c9b060979f191f1da773d729100673166f38b617e24317e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "6b3b4b64d68dab875c8a6df71194092ba94654d969211e01ed303a5c35f23528"
    sha256 cellar: :any, catalina: "90fe1204f7f7dd613574c25b4ee4894093584c2c374f7b15c5529908e5a177f2"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
