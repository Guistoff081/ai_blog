module Ai
  class Summarize
    include ActiveModel::Model

    attr_accessor :text, :summary

    validates :text, presence: true

    def summarize
      return false unless valid?

      # Simulate a summarization process
      self.summary = text.split[0..49].join(" ") + "..."
      true
    end
  end
end
