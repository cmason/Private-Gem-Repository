module ApplicationHelper

  def page_title(title, subtext = nil, &content)
    @page_title = title
    content_for :page_title do
      render partial: 'shared/page_title', locals: {title: title, subtext: subtext, content: content}
    end
  end

end
