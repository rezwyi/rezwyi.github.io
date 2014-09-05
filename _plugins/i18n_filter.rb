module Jekyll
  module I18nFilter
    def localize(input, format = nil)
      unless I18n::backend.instance_variable_get(:@translations)
        I18n.enforce_available_locales = false
        I18n.backend.load_translations Dir[File.join(File.dirname(__FILE__), '../_locales/*.yml')]
        I18n.locale = :ru
      end
      I18n.localize input, format: format
    end
  end
end

Liquid::Template.register_filter(Jekyll::I18nFilter)