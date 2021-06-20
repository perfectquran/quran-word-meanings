user_values = YAML.load_file("#{DATA_PATH}/users.yml").values

progressbar = ProgressBar.create(
  title: "Creating Users",
  total: user_values.length
)

user_values.each do |values|
  User.create! do |user|
    user.email = values["email"]
    user.password = "secret"
  end

  progressbar.increment
end

raise "wrong users count" unless User.count == user_values.count
