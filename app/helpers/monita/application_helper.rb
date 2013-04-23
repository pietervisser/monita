module Monita
  module ApplicationHelper

    def watch_path watch, options={}
      self.send("#{watch.path}_watch_path", options)
    end

  end
end
