if defined? Yajl::Parser and not NewRelic::Control.instance['disable_yajl_instrumentation']
  Yajl::Parser.class_eval do
    add_method_tracer :parse, 'Yajl/parse'
  end  
end  
