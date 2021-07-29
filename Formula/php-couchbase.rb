require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.0.tgz"
  sha256 "7f4c9da9a468e922d5a4a283607d6e5a659888f49cd6a71743ac87265fb29ae7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "62f2803db98b399c418d6e57b3d92358dccdb146b981d3466fa86b71caf0ede8"
    sha256 catalina: "57d0b4c8ccd127dddf413fe83432763af38c15eec4714f552bf0847ef4d2fce4"
    sha256 mojave:   "dbfa72c3b0382805e5d5fd853577f12f3dc0fa2de0a8e1887b4c3f00f968bfb5"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
