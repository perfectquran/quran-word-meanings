progressbar = ProgressBar.create(
    title: "Creating Words",
      total: 1
)

word_values = YAML.load_file("#{DATA_PATH}/words.yml").values
word_values.each_with_index do |_values, index|
    word_values[index]["created_at"] = Time.current
    word_values[index]["updated_at"] = Time.current
end

Word.insert_all(word_values)
raise "wrong words count" unless Word.count == word_values.count

progressbar.increment
