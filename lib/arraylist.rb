module Mongoid
  module ArrayList
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def list_field(field)
        define_method "#{field}_list" do
          self.public_send(field).join(', ')
        end

        define_method "#{field}_list=" do |arg|
          list = arg.split(',').map { |v| v.titlecase.strip }
          self.public_send("#{field}=", list)
        end
      end
    end
  end
end