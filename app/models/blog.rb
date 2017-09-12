class Blog < ApplicationRecord
    enum status: { draft: 0, published: 1 }
    # Now, you can run something like this on rails console:
    # Blog.last.publish! <--- Last blog.status == 'published'

    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of   :title, :body
end
