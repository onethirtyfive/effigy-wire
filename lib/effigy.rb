Dir[File.join(File.dirname(__FILE__), 'effigy', '*.rb')].each do |file|
  require file
end
