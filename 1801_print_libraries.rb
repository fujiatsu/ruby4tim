require 'find'

def print_libraries
  $:.each do |lib|
    Find.find(lib) do |path|
      if FileTest.directory?(path)
        dir, base = File.split(path)
        puts base
      end
    end
  end
end

print_libraries