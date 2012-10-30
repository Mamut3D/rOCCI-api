require 'occi/core/category'
require 'occi/core/categories'
require 'occi/core/kind'
require 'occi/core/mixin'
require 'occi/core/mixins'
require 'occi/core/action'
require 'occi/core/actions'
require 'occi/core/attributes'
require 'occi/core/attribute_properties'
require 'occi/core/entity'
require 'occi/core/link'
require 'occi/core/resource'

module Occi
  module Core

    extend Occi

    def self.kinds
      [
          Occi::Core::Entity.kind,
          Occi::Core::Link.kind,
          Occi::Core::Resource.kind
      ]
    end

  end
end