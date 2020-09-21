class PostCreateJob < ApplicationJob
  queue_as :default

  def perform(post_creater:)
    # Do something later
    post_creater.post_create
    # Post.create(content: "ジョブで作成")
  end
end
