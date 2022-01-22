require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.6.tgz"
  sha256 "e28b7c2d7a567233260f77bf133ad834cc6a50f3eea50424bf689b2e46685b1b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "0ac1b522ab21e178e3780a195431742caa203b5dc5352a7a0a8c3134f103dcee"
    sha256 catalina: "ed27b6d866533f4e8b37c87f10214d6e8004caae3ef00484b3aa7aaaccf6dc9a"
  end

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
