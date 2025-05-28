module Ai
  class Summarize
    include ActiveModel::Model

    attr_accessor :text, :summary

    validates :text, presence: true

    def summarize
      return false unless valid?

      client = RubyLLM::Client.new(prompt: "Summarize this: #{text}")
      client.complete.text
    end
  end
end
