require "./spec_helper"

require "spec"
require "../src/openssl_ext/x509/certificate"

include OpenSSL::X509

describe OpenSSL::X509::Certificate do
  it "can be instantiated from a PEM string" do
    pem = "-----BEGIN CERTIFICATE-----
MIIDHDCCAgSgAwIBAgIIcTFLZ2AHMiUwDQYJKoZIhvcNAQEFBQAwMTEvMC0GA1UE
AxMmc2VjdXJldG9rZW4uc3lzdGVtLmdzZXJ2aWNlYWNjb3VudC5jb20wHhcNMTgw
MzA3MDA0NTI2WhcNMTgwMzEwMDExNTI2WjAxMS8wLQYDVQQDEyZzZWN1cmV0b2tl
bi5zeXN0ZW0uZ3NlcnZpY2VhY2NvdW50LmNvbTCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAJr02/VJFlNZBZNvHqkuFHj8XrQ0QUQUVe/QvVF+atvIPJ+a
FQ9Wd0CvYcW8kqPca6ro+m/QMS0Himi3UZpnVaXleWU1um7E7VboFlozS+TisCo4
J5Reaj3oiY0NIi+mnSmJALbjbvzWBixqSaghqQDzddT8BtL8nG/jR0L4D4z21nPv
2PIE4kuBIP8kOhELY4exKlMQSUeebkHtdJJ9+ocE8y2YoetLfpKwvkXWzxmIF2wa
UrN+svohzlnjkok+QOI+jhOJcOz88zkto0GrTAaGu03stZ37fajOpyTKfcpnHysU
7EEKmWrGQfM22PMQflGqAWZBZw6lyY1FI/I90bUCAwEAAaM4MDYwDAYDVR0TAQH/
BAIwADAOBgNVHQ8BAf8EBAMCB4AwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwIwDQYJ
KoZIhvcNAQEFBQADggEBAJTBdFNRn47EK6wqGQvpHi3lBDk0OqIE09vwkvc81KAD
En8ISqR5jJZFgiTi1NU6d/yRAzRYUCpa2YHoB2qqsZfV53kmcSjYhEuxDWZPNcLf
XyZdGu2xtV5Z3SqVr9yGpasHx+ZsCTYI+jE9wi+nM5MWtWzr1hn6sFM10APkRd8l
s6s7aLFlnJ+Xgt8EhNZxKxk87rr5Mi/Lk0QniTdI67tFAxHwyk80IHl4uzYntlHg
DQ51uI5iyjWxS4QcFQZGVCZ45JOtzLsnRV1+NgnTasB1ah0gfnw4AXYOR4jV7kd4
mfzRpDQdyLFZqfGFyYQ6WSw3EFqIunkL8WPWRpG++5g=
-----END CERTIFICATE-----
"
    from_pem = Certificate.new pem
    puts from_pem.subject.to_a[0][1].should eq "securetoken.system.gserviceaccount.com"
  end
  pem = "-----BEGIN CERTIFICATE-----
MIIDHDCCAgSgAwIBAgIIcTFLZ2AHMiUwDQYJKoZIhvcNAQEFBQAwMTEvMC0GA1UE
AxMmc2VjdXJldG9rZW4uc3lzdGVtLmdzZXJ2aWNlYWNjb3VudC5jb20wHhcNMTgw
MzA3MDA0NTI2WhcNMTgwMzEwMDExNTI2WjAxMS8wLQYDVQQDEyZzZWN1cmV0b2tl
bi5zeXN0ZW0uZ3NlcnZpY2VhY2NvdW50LmNvbTCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAJr02/VJFlNZBZNvHqkuFHj8XrQ0QUQUVe/QvVF+atvIPJ+a
FQ9Wd0CvYcW8kqPca6ro+m/QMS0Himi3UZpnVaXleWU1um7E7VboFlozS+TisCo4
J5Reaj3oiY0NIi+mnSmJALbjbvzWBixqSaghqQDzddT8BtL8nG/jR0L4D4z21nPv
2PIE4kuBIP8kOhELY4exKlMQSUeebkHtdJJ9+ocE8y2YoetLfpKwvkXWzxmIF2wa
UrN+svohzlnjkok+QOI+jhOJcOz88zkto0GrTAaGu03stZ37fajOpyTKfcpnHysU
7EEKmWrGQfM22PMQflGqAWZBZw6lyY1FI/I90bUCAwEAAaM4MDYwDAYDVR0TAQH/
BAIwADAOBgNVHQ8BAf8EBAMCB4AwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwIwDQYJ
KoZIhvcNAQEFBQADggEBAJTBdFNRn47EK6wqGQvpHi3lBDk0OqIE09vwkvc81KAD
En8ISqR5jJZFgiTi1NU6d/yRAzRYUCpa2YHoB2qqsZfV53kmcSjYhEuxDWZPNcLf
XyZdGu2xtV5Z3SqVr9yGpasHx+ZsCTYI+jE9wi+nM5MWtWzr1hn6sFM10APkRd8l
s6s7aLFlnJ+Xgt8EhNZxKxk87rr5Mi/Lk0QniTdI67tFAxHwyk80IHl4uzYntlHg
DQ51uI5iyjWxS4QcFQZGVCZ45JOtzLsnRV1+NgnTasB1ah0gfnw4AXYOR4jV7kd4
mfzRpDQdyLFZqfGFyYQ6WSw3EFqIunkL8WPWRpG++5g=
-----END CERTIFICATE-----
"

  it "can provide a public key PKey" do
    pem = "-----BEGIN CERTIFICATE-----
MIIDHDCCAgSgAwIBAgIIcTFLZ2AHMiUwDQYJKoZIhvcNAQEFBQAwMTEvMC0GA1UE
AxMmc2VjdXJldG9rZW4uc3lzdGVtLmdzZXJ2aWNlYWNjb3VudC5jb20wHhcNMTgw
MzA3MDA0NTI2WhcNMTgwMzEwMDExNTI2WjAxMS8wLQYDVQQDEyZzZWN1cmV0b2tl
bi5zeXN0ZW0uZ3NlcnZpY2VhY2NvdW50LmNvbTCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAJr02/VJFlNZBZNvHqkuFHj8XrQ0QUQUVe/QvVF+atvIPJ+a
FQ9Wd0CvYcW8kqPca6ro+m/QMS0Himi3UZpnVaXleWU1um7E7VboFlozS+TisCo4
J5Reaj3oiY0NIi+mnSmJALbjbvzWBixqSaghqQDzddT8BtL8nG/jR0L4D4z21nPv
2PIE4kuBIP8kOhELY4exKlMQSUeebkHtdJJ9+ocE8y2YoetLfpKwvkXWzxmIF2wa
UrN+svohzlnjkok+QOI+jhOJcOz88zkto0GrTAaGu03stZ37fajOpyTKfcpnHysU
7EEKmWrGQfM22PMQflGqAWZBZw6lyY1FI/I90bUCAwEAAaM4MDYwDAYDVR0TAQH/
BAIwADAOBgNVHQ8BAf8EBAMCB4AwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwIwDQYJ
KoZIhvcNAQEFBQADggEBAJTBdFNRn47EK6wqGQvpHi3lBDk0OqIE09vwkvc81KAD
En8ISqR5jJZFgiTi1NU6d/yRAzRYUCpa2YHoB2qqsZfV53kmcSjYhEuxDWZPNcLf
XyZdGu2xtV5Z3SqVr9yGpasHx+ZsCTYI+jE9wi+nM5MWtWzr1hn6sFM10APkRd8l
s6s7aLFlnJ+Xgt8EhNZxKxk87rr5Mi/Lk0QniTdI67tFAxHwyk80IHl4uzYntlHg
DQ51uI5iyjWxS4QcFQZGVCZ45JOtzLsnRV1+NgnTasB1ah0gfnw4AXYOR4jV7kd4
mfzRpDQdyLFZqfGFyYQ6WSw3EFqIunkL8WPWRpG++5g=
-----END CERTIFICATE-----
"

    cert = Certificate.new pem
    public_key = cert.public_key
    (public_key.is_a? OpenSSL::RSA).should be_true

    pkey_pem = "-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmvTb9UkWU1kFk28eqS4U
ePxetDRBRBRV79C9UX5q28g8n5oVD1Z3QK9hxbySo9xrquj6b9AxLQeKaLdRmmdV
peV5ZTW6bsTtVugWWjNL5OKwKjgnlF5qPeiJjQ0iL6adKYkAtuNu/NYGLGpJqCGp
APN11PwG0vycb+NHQvgPjPbWc+/Y8gTiS4Eg/yQ6EQtjh7EqUxBJR55uQe10kn36
hwTzLZih60t+krC+RdbPGYgXbBpSs36y+iHOWeOSiT5A4j6OE4lw7PzzOS2jQatM
Boa7Tey1nft9qM6nJMp9ymcfKxTsQQqZasZB8zbY8xB+UaoBZkFnDqXJjUUj8j3R
tQIDAQAB
-----END PUBLIC KEY-----
"

    public_key.to_pem.should eq pkey_pem
  end
end