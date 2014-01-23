require 'rdiscount'

module MarkdownHandler
  def self.haml
    @haml ||= ActionView::Template.registered_template_handler(:haml)
  end

  def self.call(template)
    compiled_source = haml.call(template)
    "RDiscount.new(begin;#{compiled_source};end).to_html"
  end
end

ActionView::Template.register_template_handler :md, MarkdownHandler


