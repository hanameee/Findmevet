source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.4'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # 개발용 DB - Sqlite3
  gem 'sqlite3'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # 배포용 DB - Postgresql
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# 부트스트랩 '4.0.0.alpha6'
gem 'bootstrap'
source "https://rails-assets.org" do
  gem "rails-assets-tether"
end
# jQuery-UI 라이브러리
gem 'jquery-ui-rails'
# 자바스크립트 활용 Notification
gem 'toastr-rails'
# Font-Awesome 아이콘
gem 'font-awesome-rails'

# 환경변수 저장
gem 'figaro'
# User 모델 구성
gem 'devise'
# Facebook 소셜 로그인 구현
gem 'omniauth-facebook'
# Role에 대한 가능/불가능 조작
gem 'cancancan'
# 모델의 인스턴스에 대한 role을 지정
gem 'rolify'
# 모델의 인스턴스 조작이 가능한 관리자 페이지 생성
gem 'activeadmin'

# 이미지 업로드 및 사이즈 조절
gem 'carrierwave'
gem 'mini_magick'
gem 'fog-aws'

# 검색 기능
gem 'ransack'

# rails db
gem 'rails_db', '~> 1.6'

# photo
gem 'paperclip'

# 프로필 사진
gem 'gravatarify'

# 위경도 변환
gem 'geocoder'

# 실시간 참조 DB
gem 'redis'
