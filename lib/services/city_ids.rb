require "yaml"

class RandomId

  def initialize
    @idfile = YAML.load_file('/Users/tech-a23/Documents/engineering-9/SDET/Sparta-Weather-SOM/lib/city_id.yml')
  end

  def ids
    @idfile
  end

  def random
    @idfile.sample
  end

end

yaml = RandomId.new
yaml.ids
yaml.random
