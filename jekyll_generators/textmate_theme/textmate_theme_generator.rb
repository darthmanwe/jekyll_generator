require File.dirname(__FILE__) + '/../../lib/jekyll_generator'
class TextmateThemeGenerator < JekyllGenerator::ThemeGeneratorBase
  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory 'layouts'
      m.directory 'css'

      m.template_copy_each ["default.html", "post.html"], "layouts"
      m.file_copy_each ["macromates.css"], "css"
    end
  end
end