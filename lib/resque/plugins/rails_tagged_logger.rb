module Resque
  module Plugins
    module RailsTaggedLogger
      def around_perform_rails_tagged_logger(*args, &block)
        Rails.logger.tagged log_tags, &block
      end

      # Override to provide your own tags. Takes the same arguments as your
      # perform method. Defaults to [:resque, ClassName].
      #
      # Example:
      #   def log_tags(record_id)
      #     super + [record_id]
      #   end
      def log_tags(*args)
        [:resque, name]
      end
    end
  end
end
