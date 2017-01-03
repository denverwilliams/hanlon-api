require 'pry'

module Hanlon
module Api
  #hanlon policy add -p linux_deploy -l precise -m 5fLIR5p71rkiW8GjCN6ScJ -b none -t vmware_vm -e true
  class ActiveModel < Resource
    attr_accessor :uuid,
                  :is_template,
                  :template,
                  :noun,
                  :tags,
                  :hidden,
                  :policies,
                  :maximum_count,
                  :enabled,
                  :template,
                  :description,
                  :node_uuid,
                  :bind_timestamp,
                  :bound,
                  :label,
                  :match_using,
                  :root_policy

    def node
      # not sure why all this data is duplicated inside the active_model
      @model['@node']
    end

    def model
      # remove '@node'...again not sure why it's duplicated here
      @model.select {|key,_| key != '@node'}
    end

    def logs
      # remove '@node'...again not sure why it's duplicated here
      @model['@log']
    end

    def policy
      # make this easier to get at
      @policy ||= Hanlon::Api::Policy.find(root_policy)
    end

    def self.client
      Api.api_client
    end

    def self.resource_path
      'active_model'
    end

    def self.metadata
      { }
    end

  end

end
end

