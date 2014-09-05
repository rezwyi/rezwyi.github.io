module Jekyll
  class CopyrightYearsTag < Liquid::Tag
    def render(context)
      "2011-#{Time.now.year}"
    end
  end
end

Liquid::Template.register_tag('copyright_years', Jekyll::CopyrightYearsTag)