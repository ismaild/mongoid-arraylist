module Mongoid
  module ArrayList
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def list_field(field)
        define_method "#{field}_list" do
          val = self.public_send(field)
          val ? val.join(', ') : nil
        end

        define_method "#{field}_list=" do |arg|
          list = arg.split(',').map { |v| v.titlecase.strip }
          self.public_send("#{field}=", list)
        end
      end
    end
  end
end