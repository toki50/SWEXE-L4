# config/initializers/secret_key.rb
if ENV["SECRET_KEY_BASE"].nil?
  raise "SECRET_KEY_BASE is not set"
end

SECRET_KEY = ENV["SECRET_KEY_BASE"].byteslice(0,16) # AES-128 用
