require "monita/watch"
require "monita/engine"
require 'haml'

module Monita

  mattr_accessor :watches
  @@watches = []

end
