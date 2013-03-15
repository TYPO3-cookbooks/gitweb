maintainer       "Steffen Gebert"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache 2.0"
description      "Installs/Configures gitweb"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ build-essential mysql database java git maven apache2 }.each do |cookbook|
  depends cookbook
end

recipe "gitweb::default", "Installs and configures gitweb."

supports "debian"

depends "ssl_certificates"