class Post
  include Mongoid::Document
  include Mongoid::ArrayList

  field :tags, type: Array, default: []

  list_field :tags
end

module Mongoid::ArrayList
  describe "list_field" do
    context "class methods" do

      subject { Post }

      it { should respond_to(:list_field) }
    end

    context "instance methods" do
      subject { Post.new }

      it { should respond_to(:tags_list) }
      it { should respond_to(:tags_list=) }
    end
  end
end