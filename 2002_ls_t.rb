def ls_t(path)
  if File.directory?(path)
    dirHash = {}
    Dir.glob('*') do |item|
      time = File.stat(item).mtime
      dirHash[time] = item
    end
    puts Hash[dirHash.sort.reverse].values
  else
    puts path
  end
end

ls_t(__FILE__)
ls_t(Dir.pwd)