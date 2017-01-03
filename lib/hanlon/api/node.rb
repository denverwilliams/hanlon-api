module Hanlon
module Api
  class Node < Resource
    attr_accessor :uuid,
                  :noun,
                  :tags,
                  :hw_id,
                  :timestamp,
                  :last_state,
                  :dhcp_mac,
                  :status,
                  :attributes_hash,
                  :label

    def self.client
      Api.api_client
    end

    def self.resource_path
      'node'
    end

    def self.metadata
      { }
    end

  end

end
end

