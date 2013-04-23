module Monita
  class Engine < ::Rails::Engine
    isolate_namespace Monita

    initializer "monita.watches" do
      Watch.setup
    end

  end
end
