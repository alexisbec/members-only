module PostsHelper
  def show_author(post)
    "by #{post.user.author}" if user_signed_in?
  end

  def new_post
    link_to('New Post', new_post_path, class: 'new') if user_signed_in?
  end
end
