class FortuneGem

  # Pass an option of :max_length if you want to limit length of fortunes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       #
  def self.give_fortune(options = {})

    if options[:max_length]
      short_listed = fortunes.find_all{|f| f.length <= options[:max_length].to_i}
      fortune = short_listed[rand(short_listed.length)]
    else
      fortune = fortunes[rand(fortunes.length)]
    end

    fortune
  end

  def self.fortunes
    @fortunes ||= File.open("#{File.dirname(__FILE__)}/fortunes").read.split("%").map{|f| f.sub("\n", "").strip }
  end

  def self.fortunes=(path)
    @fortunes = path
  end

end