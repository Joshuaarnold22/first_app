module ApplicationHelper
  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def markdown(markdown)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render).html_safe
  end

  def up_vote_link_classes(post)
    up = "glyphicon glyphicon-chevron-up"
    vote = current_user.voted(post) #how do I get current_user.voted?
    if vote && vote.up_vote?
      up += "Voted"
    end
  end

  def down_vote_link_classes(post)
    down = "glyphicon glyphicon-chevron-down"
    vote = current_user.voted(post)
    if vote && vote.down_vote?
      down += "Voted"  #why connect to down with "Voted"?
    end
  end
end
