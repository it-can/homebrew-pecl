require_relative "../lib/php_pecl_formula"

class PhpAT73Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 catalina: "8480afa00438c2fbb8597c69a27d95cf3d10cd9166f296cafe5934e981a30666"
    sha256 mojave:   "2041f6f99099f0a2b9fa51ac2e0737f40339a24a475544476258829caa03df86"
  end

  disable! date: "2021-12-06", because: :versioned_formula

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
