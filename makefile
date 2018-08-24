fix_orientation:
	mogrify -auto-orient images/*/*
lossless_fix_orientation:
	exiftran -ai images/*/*
image_dep:
	brew isntall ImageMagick
	brew install exiftran	
dep:
	gem install jekyll bundler
	bundle install
	npm i
fix_gem:
	gem install nokogiri -v '1.8.4' --source 'https://rubygems.org/'	
serve:
	bunlde exec jekyll serve
prod:
	JEKYLL_ENV=production bundle exec jekyll build