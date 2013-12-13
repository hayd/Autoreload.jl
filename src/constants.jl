type AFile
  should_reload::Bool
  mtime::Float64
  deps::Vector{String}
end

type Dep
  should_reload::Bool
  name::String
end

const files = (String=>AFile)[]
const module_watch = Symbol[]
const options = (Symbol=>Any)[:constants=>false, :smart_types=>true, :verbose_level=>:warn, :state=>:on]
# verbose_level = :warn
# state = :on