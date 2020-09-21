class PostCreateJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Post.create(content: "ジョブで作成")
  end
end
