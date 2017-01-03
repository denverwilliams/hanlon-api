module Hanlon
module Api

  class Tag < Resource
    attr_accessor :uuid,
                  :name,
                  :noun,
                  :tag,
                  :field

    def self.client
      Api.api_client
    end

    def self.resource_path
      'tag'
    end

    def self.metadata
      raise 'Not implemented in subclass!'
    end

  end

end
end

