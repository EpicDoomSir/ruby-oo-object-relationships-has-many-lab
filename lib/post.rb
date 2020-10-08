class Post
    attr_accessor :title, :author, :all

    @@all = []

    def initialize(title, author=nil)
        @title = title
        @author = author
        @@all << self
    end

    def author=(author)
        @author = author
        author.posts << self
    end

    def author_name
        if @author
            @author.name
        else
            @author
        end
    end

    def self.all
        @@all
    end
end