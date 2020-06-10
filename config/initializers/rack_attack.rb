class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new
  #storage shiteru
  throttle('api/ip', limit: 150, period: 2.minutes) do |req|
    req.ip
  end
end