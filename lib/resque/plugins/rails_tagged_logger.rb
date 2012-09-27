module Resque
  module Plugins
    module RailsTaggedLogger
      def around_perform_rails_tagged_logger(*args, &block)
        Rails.logger.tagged :resque, name, &block
      end
    end
  end
end
