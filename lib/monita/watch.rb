module Monita
  class Watch
    class << self

      def setup
        [Monita::Watches::DelayedJob, Monita::Watches::Resque].each do |watch_class|
          add_watch(watch_class.new) if watch_class.applicable?
        end
      end

      def add_watch watch
        Monita.watches << watch
      end

      def find_by_name name
        Monita.watches.find {|watch| watch.name == name}
      end

    end
  end
end