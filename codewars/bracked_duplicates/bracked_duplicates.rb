class BrackedDuplicates
  def self.string_parse(str)
    ('a'..'z').each do |char|
      str.gsub!(/#{char}{2,}/, '[\1]')
    end
    str
  end
end
