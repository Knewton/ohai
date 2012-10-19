provides 'knewton_platform'

%w{find yaml}.each {|r| require r}

Find.find('/etc/knewton') do |f|
  (@y||={}).merge! YAML::load(File.open(f)) if f =~ /\.y[a]?ml$/
end

knewton_platform @y
