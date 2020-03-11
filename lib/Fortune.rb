module UnixFortunes
  class Fortune
    def give_fortune
      fortunes[rand(fortunes.length)]
    end
    def fortunes
      @fortunes ||= File.open("#{File.dirname(__FILE__)}/fortunes").read.split("%").map{|f| f.sub("\n", "").strip }
    end
  end
end
