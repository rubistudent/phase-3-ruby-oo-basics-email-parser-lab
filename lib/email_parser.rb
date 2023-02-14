# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        emails.split.collect do |address|
        address.split(',')
        end
        .flatten.uniq
    end
    end

    # Path: lib/author.rb
    class Author
    attr_accessor :name, :posts

    @@post_count = 0

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@post_count += 1
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        @@post_count
    end
    end



