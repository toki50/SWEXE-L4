# config/initializers/secret_key.rb

# ENV["SECRET_KEY_BASE"] が未設定の場合はエラーを出すか、ビルド用ダミーを使う
secret = ENV["SECRET_KEY_BASE"] || "dummysecretkey123456"

# AES-128 用に16バイトだけ取り出す
AES_KEY = secret.byteslice(0, 16)
