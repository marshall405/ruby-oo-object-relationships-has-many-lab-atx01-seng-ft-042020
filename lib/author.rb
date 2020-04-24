class Author

    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.filter {|post| post.author.name == self.name}
    end

    def add_post(post)
        post.author = self    
    end

    def add_post_by_title(title)
        self.add_post(Post.new(title))
    end

    def self.post_count
        Post.all.count 
    end

end
