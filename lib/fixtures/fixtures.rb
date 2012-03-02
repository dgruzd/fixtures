class ActiveRecord::Base

#require 'yaml'
require 'digest/md5'


def to_hash
  hash = {}; self.attributes.each { |k,v| hash[k.to_sym] = v }
  return hash
end

def to_fixtures
  hash = self.to_hash
  md5 = Digest::MD5.hexdigest(hash.to_s)
  string = "#{md5}:\n"
  hash.each do |key,value|
    string += "  #{key.to_s}: #{value}\n" unless value.nil?
  end
  string += "\n"
  table_name = self.class.table_name
  file_name = table_name + ".yml"
  File.open("test/fixtures/#{file_name}", 'a') do |out|
    out.write(string)
  end
end


end
