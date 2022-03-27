# 4. Write a function that takes json file(demo.json) as an input, and return value for any of the requested key. (demo.json : file://10.0.8.157/Training%20Plans%20-%202021/Training%20Material%20-%202021/Ruby%20On%20Rails/demo.json)
#         (The key may be at any level)
#         =============
#         sample input
#         =============
#         md5Hex
#         =============
#         desired ouput
#         =============
#         377d484478843e5e2d8b7eb935cbf598

require 'json'

class JSONParser
  '''JSON Parser'''

  def initialize
    '''Init'''
  end

  def _loop_dict(el, key)
    '''Loop Dict Recursively'''
    if el.is_a? Hash
      for k, v in el
        @res.append(v) if k == key
        _loop_dict(v, key)
      end
    elsif el.is_a? Array
      for v in el
        _loop_dict(v, key)
      end
    end
  end

  def find_key(filename, key)
    '''Finds value of a key from Json file'''
    @res = []

    File.open(filename) do |json_file|
      root = JSON.parse(json_file.read)
      _loop_dict(root, key)
      if @res.length > 0
        for v in @res
          puts(key + ' : ' + v)
        end
      else
        puts("Key(#{key}) Not Found!")
      end
    end
  end
end

parser = JSONParser.new
print 'Enter a Key to Find: '
key = gets.chomp
parser.find_key('demo.json', key)
