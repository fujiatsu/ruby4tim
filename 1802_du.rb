require 'find'

def du(top)
  Find.find(top) do |path|
    if FileTest.directory?(path)
      puts "#{pathSize(path)} : #{path}"
    end
  end
end

def pathSize(path)
  totalSize = 0
  if File.directory?(path)
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."
      next if name == ".."
      totalSize += pathSize(path + "/" + name)
    end
    dir.close
  else
    totalSize += FileTest.size(path)
  end
  totalSize
end

du(ARGV[0])
