class PostCreater < ApplicationStruct
  def post_create
    Post.create(content: "ジョブにPostCreaterを渡して生成")
  end
end
