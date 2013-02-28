require 'generators/common'
module Batman
  module Generators
    class ScaffoldGenerator < ::Rails::Generators::NamedBase
      include Common
      requires_app_name

      desc "This generator creates the client side CRUD scaffolding"

      def create_batman_model
        with_app_name do
          generate "batman:model #{singular_model_name} #{app_name_flag}"
          generate "batman:controller #{plural_name} index show edit create update destroy #{app_name_flag}"
        end
      end

    end
  end
end
