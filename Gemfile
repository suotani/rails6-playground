ruby '3.0.2'
source 'https://rubygems.org' do
  gem 'rails',  '6.0.4.1'
  gem 'sqlite3'
  gem 'puma',   '5.6.4'
  gem 'bcrypt', '3.1.16'
  gem 'webpacker', '~> 4.0'

  # 肥大化するmigration回避のため
  gem 'ridgepole', '0.9.6'

  # Views
  gem 'draper',     '4.0.2'
  gem 'slim-rails', '3.3.0'

  # API
  gem 'jbuilder', '2.11.2'

  # フロントエンド

  gem 'bootsnap', '1.9.1',  require: false

  gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

  gem 'sass-rails', '6.0.0'

  group :development, :test do

    # デバッグ用ツール
    gem 'pry-rails', '0.3.9'
    gem 'byebug', platforms: %i[mri mingw x64_mingw]

    # ダミーデータ生成
    gem 'faker', '2.19.0'
  end

  group :development do
    gem 'spring',   '3.0.0'
    gem 'foreman',  '0.87.2'

    # デバッグ用
    gem 'web-console',        '4.1.0'
    gem 'rack-mini-profiler', '2.3.3'
    gem 'listen',             '3.7.0'

    # Webpack Dev Server
    gem 'rack-proxy', '0.7.0'

    # ブラウザ上で送信したメールを確認する
    gem 'letter_opener_web'
  end

  group :test do
    gem 'selenium-webdriver', '4.0.3'
    gem 'webdrivers',         '5.0.0'
  end
end
