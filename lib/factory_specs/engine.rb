module FactorySpecs
  class Engine < ::Rails::Engine
    isolate_namespace FactorySpecs

    # Add our specs to the host app
    # config.rspec_paths << self.root
  end
end
