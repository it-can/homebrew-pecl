require_relative "../lib/php_pecl_formula"

class PhpAT74Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.2.0.tgz"
  sha256 "2a41143a7b29f4a962a3805b77aa207a99e4566e2d314ce98a051cd24d6e9636"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "5a8425dfb3dddcf50b06ba3cb2a0eb89fa22241ba9129d04a31575d6599df0d0"
    sha256 cellar: :any, monterey: "544cf49c1d0a53615f4429a2d4e4785b5ce2871a12ce9fbd97f97d5fd0caf83e"
    sha256 cellar: :any, big_sur:  "04ff4637ad899fe4b4e42e485ae38e7203498af4cddca8666d35a60ba955708e"
  end

  disable! date: "2022-11-28", because: :versioned_formula

  depends_on "libmemcached"
  depends_on "kabel/pecl/php@7.4-igbinary"
  depends_on "kabel/pecl/php@7.4-msgpack"

  configure_arg %W[
    --enable-memcached-session
    --enable-memcached-igbinary
    --enable-memcached-json
    --enable-memcached-msgpack
    --enable-memcached-sasl
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    # fix include location for configure to find
    mkdir_p buildpath/source_dir/"include/php/ext"
    ln_s Formula["kabel/pecl/php@7.4-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@7.4-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
