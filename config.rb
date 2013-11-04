require "bourbon"

with_layout :default do
  page "/*"
end

# Pages with different layout
page "/nolayout.json", :layout => false

# Asset paths
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/images'

# Build-specific configuration
configure :build do

  set :relative_links, true
  activate :relative_assets

  # Minify CSS on build
#  activate :minify_css

  # Minify Javascript on build
#  activate :minify_javascript, :ignore => [/-min\.js/]
end
