require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.7.0preview.tgz"
  sha256 "9d6ab94ad1ef69906acb44545581d7a3c267a95d859ce37e45c5abbe896227a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "41a1360fb6caf5159a258b59eb1fdc8d7fcc9dc59140011b203ac459666ae04b" => :mojave
    sha256 "1df4241a3fbcb0501d2fb719cfda212dfc14b473c6af26e195fa870c39a723bc" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "pdo_sqlsrv-5.7.0preview"
  end
end
