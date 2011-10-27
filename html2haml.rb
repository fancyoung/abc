class ToHaml
  def initialize(path)
    @path = path
  end

  def convert!
    Dir["#{@path}/**/*.erb"].each do |file|
      `html2haml -rx #{file} #{file.gsub(/\.erb$/, '.haml')}`
      `rm #{file}`
    end
  end
end

path = File.join(File.dirname(__FILE__), 'app', 'views', 'auth')
ToHaml.new(path).convert!
