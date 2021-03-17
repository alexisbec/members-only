module PostsHelper
  def show_author(post)
    if user_signed_in?
      post.user.author
    end
  end

  def edit_post(post)
    if user_signed_in?
      link_to('Edit', edit_post_path(post))
    end
  end

  def destroy_post(post)
    if user_signed_in?
      link_to('Destroy', post, method: :delete, data: { confirm: 'Are you sure?' })
    end
  end

  def new_post
    if user_signed_in?
      link_to('New Post', new_post_path, class: "new")
    end
  end
end
