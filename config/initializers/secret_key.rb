# config/initializers/secret_key.rb
key = ENV.fetch("SECRET_KEY_BASE")
raise "SECRET_KEY_BASE must be at least 16 bytes" if key.bytesize < 16

cipher = OpenSSL::Cipher::AES.new(128, :CBC)
cipher.key = key[0, 16]  # AES-128 の場合は最初の16バイト
