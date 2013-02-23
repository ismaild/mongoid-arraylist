# Mongoid::Arraylist

mongoid-arraylist includes two methods on your model, that makes it really simple to deal with mongodb arrays. No need for custom form's or controller logic to deal with adding items to a mongodb array. 

It defines getters and setters on your model for field_list. Given a comma seperated string, it will split the string and save each item to a mongodb array.

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid-arraylist'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-arraylist

## Usage

1. Add: include Mongoid::ArrayList to your model
2. Add: list_field <array_field_name>

i.e

class Post
  include Mongoid::Document
  include Mongoid::ArrayList

  field :tags

  list_field :tags
end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
