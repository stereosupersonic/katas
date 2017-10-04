class Convert
  def initialize(text)
    @text = text.to_s
  end

  def call
    @text.split(/[^a-zA-Z]/).map.with_index { |w, i| i > 0 ? w.capitalize : w }.join
  end
end
