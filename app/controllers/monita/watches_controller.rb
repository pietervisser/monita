module Monita

  class WatchesController < Monita::ApplicationController

    helper_method :watch

    def index
    end

    def show
    end

    def touch
      watch.touch
      render :text => "Touching watch: #{watch.name}"
    end

  protected

    def watch
      @_watch ||= Monita::Watch.find_by_name params[:watch]
    end

  end
end