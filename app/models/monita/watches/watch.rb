module Monita
  module Watches
    class Watch

      class << self

        def applicable?
          false
        end

      end

      def name
        self.class.instance_variable_get(:@name)
      end

      def path
        self.class.instance_variable_get(:@path)
      end

      def touch
        puts "Touching #{self}"
      end

      def update_mtime
        File.open(file_path, 'w') {|f| f.write("#{name} last update: #{Time.now}") }
      end

      def last_updated_at
        update_mtime unless File.exists?(file_path)
        File.mtime(file_path)
      end

      protected

      def file_path
        File.join(Rails.root, 'public', 'watches', "#{path}.txt")
      end

    end
  end
end