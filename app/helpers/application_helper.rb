module ApplicationHelper
# define this method to use it for entire app views.
  def error_messages_for(object)
    render(:partial => 'layouts/shared/error_messages',
      :locals => {:object => object})
  end



end
