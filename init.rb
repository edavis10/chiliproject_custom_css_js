require 'redmine'

Redmine::Plugin.register :chiliproject_custom_css_js do
  name 'Custom CSS and JavaScript'
  author 'Eric Davis'
  url 'https://projects.littlestreamsoftware.com'
  author_url 'http://www.littlestreamsoftware.com'
  description "Add custom CSS and JavaScript to your ChiliProject"
  version '1.0.0'

  requires_redmine :version_or_higher => '0.8.0'

  settings({
             :partial => 'settings/custom_css_js',
             :default => {
               'custom_css' => '',
               'custom_javascript' => ''
             }})
end
require 'chiliproject_custom_css_js/hooks/view_layouts_base_html_head_hook'
