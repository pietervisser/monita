module Monita
  module Watches
    class DelayedJob < Monita::Watches::Watch

      @name = "Delayed Job"
      @path = "delayed_job"

      def touch
        Delayed::Job.enqueue TouchDjJob.new
      end

      class << self
        def applicable?
          defined? Delayed::Job
        end
      end

    end
  end

  class TouchDjJob

    def perform
      Monita::Watch.find_by_name("Delayed Job").update_mtime
    end

  end

end