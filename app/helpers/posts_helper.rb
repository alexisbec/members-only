module PostsHelper
  def show_author(post)
    "by #{post.user.author}" if user_signed_in?
  end

  def edit_post(post)
    link_to('Edit', edit_post_path(post)) if user_signed_in?
  end

  def destroy_post(post)
    link_to('Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }) if user_signed_in?
  end

  def new_post
    link_to('New Post', new_post_path, class: 'new') if user_signed_in?
  end
end
