# 3. Given a xml file(sample.xml) print out all the files and folders hierarchically. It should have a proper format i.e the files should be clearly visible under the folder so that a user get idea about the folder structure.
#         Take the XML filename as an argument. Use OOPS concepts.
#         Ruby script should contain class, and all the required definitions should be defined within that class. Using sample.xml
# Sample Output:
# 	Folder_1
# 		File_1
# 		Folder_2
# 			File_3
# 		Folder_4

require 'nokogiri'

class XMLParser
  def initialize; end

  def read_folder(el, lvl = 1)
    # Read Folders Recursively and Print Files
    for child in el.elements
      if child.node_name == 'folder'
        puts("\t" * (lvl - 1) + '└─────>' + child['name'])
        read_folder(child, lvl + 1)
      elsif child.node_name == 'file'
        puts("\t" * (lvl - 1) + '└───>' + child['name'])
      end
  end
  end

  def parse_xml(filename)
    doc = File.open(filename) { |f| Nokogiri::XML(f) }
    root = doc.root
    read_folder(root)
  end
end

parser = XMLParser.new
parser.parse_xml('sample.xml')
