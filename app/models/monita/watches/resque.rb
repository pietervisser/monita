module Monita
  module Watches
    class Resque < Monita::Watches::Watch

      @name = 'Resque'
      @path = 'resque'

      def touch
        ::Resque.enqueue ResqueJob
      end

      class << self
        def applicable?
          defined? ::Resque
        end
      end

    end
  end

  class ResqueJob

    @queue = :monitoring

    def self.perform
      Monita::Watch.find_by_name("Resque").update_mtime
    end

  end

end