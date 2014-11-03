# With alternative layout
page "/type.html", layout: :pages
page "/forms.html", layout: :pages
page "/icons.html", layout: :pages
page "/buttons.html", layout: :pages
page "/admin.html", layout: :backoffice

require 'slim'
# Avoid HTML minification for people who don't know slim
Slim::Engine.default_options[:pretty] = true

activate :livereload
activate :gzip
activate :directory_indexes
activate :syntax

set :js_dir, 'assets/javascripts'
set :css_dir, 'assets/stylesheets'
set :images_dir, 'assets/images'

# Add bower's directory to sprockets asset path
after_configuration do

  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]

end

configure :build do

  activate :autoprefixer,
    browsers: ['last 2 versions', 'ie 8', 'ie 9']

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash

  activate :relative_assets
  set :relative_links, true

  activate :sitemap, :hostname => data.settings.site.url

end
