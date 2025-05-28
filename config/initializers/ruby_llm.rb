# config/initializers/ruby_llm.rb (in Rails) or at the start of your script
require "ruby_llm"

RubyLLM.configure do |config|
  # Set keys for the providers you need. Using environment variables is best practice.
  config.anthropic_api_key = ENV.fetch("ANTHROPIC_API_KEY", nil)
  config.openrouter_api_key = ENV.fetch("OPENROUTER_API_KEY", nil)
  # Add other keys like config.open_api_key if needed
end
