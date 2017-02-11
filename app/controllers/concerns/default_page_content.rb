module DefaultPageContent
  extend ActiveSupport::Concern
  included do
    before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Michelle Gerber | MG"
    @seo_keywords = "Michelle Gerber"
  end
end