activate :navtree do |options|
  options.data_file = 'tree.yml'
  options.source_dir = 'source' # The `source` directory we want to represent in our nav tree.
  options.ignore_files = [
    'sitemap.xml',
    'robots.txt',
    'human.txt',
    'favicon_base.png',
    'CNAME',
    'index.html',
    '404.html'
  ]
  options.ignore_dir = ['assets', 'views'] # An array of directories we want to ignore when building our tree.
  options.home_title = 'Home' # The default link title of the home page (located at "/"), if otherwise not detected.
  options.promote_files = ['index.html'] # Any files we might want to promote to the front of our navigation
  options.ext_whitelist = [] # If you add extensions (like '.md') to this array, it builds a whitelist of filetypes for inclusion in the navtree.
end

activate :livereload
activate :gzip
activate :syntax

###
# Page options, layouts, aliases and proxies
###

page "/sitemap.xml", layout: false

require 'slim'
# Avoid HTML minification for people who don't know slim
Slim::Engine.default_options[:pretty] = true

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

  activate :sitemap, hostname: data.settings.site.url

  activate :robots,
    rules: [{:user_agent => '*', :allow => %w(/)}],
    sitemap: data.settings.site.url+'sitemap.xml'

end
