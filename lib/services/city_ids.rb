require "yaml"

class RandomId

  def initialize
    @idfile = YAML.load_file('lib/services/city_id.yml')
  end

  def ids
    puts @idfile
  end

end

yaml = RandomId.new
yaml.ids
