module DefaultPageConcern
	extend ActiveSupport::Concern

included do
 before_action :set_page_defaults
end

def set_page_defaults
  @page_title= "Devcamp Portfolio | My Portfolio"
  @seo_keywords= "Jorden Hudgen Portfolio"
end


end
