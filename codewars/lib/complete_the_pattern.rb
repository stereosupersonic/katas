class CompleteThePattern
  def self.pattern(args)
     result = []
     args.times.each_with_index do |n,i|
     result << (i+1..args).to_a.reverse.join

     end
     puts result
     result.join("\n")
  end
end
