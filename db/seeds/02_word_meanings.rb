progressbar = ProgressBar.create(
  title: "Creating Meanings",
  total: 1
)

meaning_values = YAML.load_file("#{DATA_PATH}/meanings.yml")
meaning_values.each_with_index do |_values, index|
  meaning_values[index]["created_at"] = Time.current
  meaning_values[index]["updated_at"] = Time.current
end

WordMeaning.insert_all(meaning_values)
raise "wrong meaning count" unless WordMeaning.count == meaning_values.count

progressbar.increment
