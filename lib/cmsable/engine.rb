# encoding: utf-8
module Cmsable
# This makes the consuming app load our helpers
  class Engine < ::Rails::Engine
    isolate_namespace Cmsable
    
  end
end
