DATA_PATH = Rails.root.join("db", "data")

Dir[Rails.root.join("db", "seeds", "*.rb")].each do |file|
    require file
end
