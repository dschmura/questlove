module ApplicationHelper  
  def site_name
    @site_name = 'QuestLove'
    @site_name = @site_name || Rails.application.class.parent_name.gsub(/[A-Z]/)  { |c| " #{c} "} 
  end

end
