require_relative 'post.rb'

class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_name)
        post_name = Post.new(post_name)
        add_post(post_name)
    end

    def self.post_count
        Post.all.count
    end
end