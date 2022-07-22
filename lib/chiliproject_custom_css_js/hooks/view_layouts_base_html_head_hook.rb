module ChiliprojectCustomCssJs
  module Hooks
    class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        content = ''

        if Setting.plugin_chiliproject_custom_css_js.present?
          css = Setting.plugin_chiliproject_custom_css_js["custom_css"]
          js = Setting.plugin_chiliproject_custom_css_js["custom_javascript"]

          if css.present?
            content += content_tag(:style, css.html_safe, :type => 'text/css')
          end

          if js.present?
            content += javascript_tag(js)
          end

        end

        return content
      end
    end
  end
end
