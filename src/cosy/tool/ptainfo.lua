return function (Layer, ptainfo, ref)

  local meta    = Layer.key.meta
  local refines = Layer.key.refines
  local tool    = Layer.require "cosy/formalism/tool"
  local pta   = Layer.require "cosy/formalism/automaton/timed_automaton/parametric_timed_automaton"

  ptainfo [refines] = {
    tool
  }

  ptainfo.description = "Show clocks, parameters, states, transitions of a pta."

  ptainfo.pta = {
    [refines]   = { ref [meta].parameter_type },
    name        = "pta",
    description = "pta to analyze",
    default     = nil,
    type        = pta,
    update      = true,
  }

  ptainfo.run = function (options)
    local model = options.model.pta
    print ("clocks: ")
    for k,v in pairs (model.clocks) do
    
     print(model.clocks[k].value.."\n")
    
    end

    print ("parameters: ")

    for k,v in pairs (model.parameters) do
    
     print(model.parameters[k].value.."\n")
    
    end

    print ("states: ")

    for k,v in pairs (model.states) do
    
     print("name: "..model.states[k].value.."\n")
    
    end

    print ("transitions: ")

    for k,_ in pairs (model.transitions) do
     
      print("name: "..k.."\n")

      for i=1, #model.transitions[k].arrows do
     
        if model.transitions[k].arrows[i].input then
     
          print("input state: "..model.transitions[k].arrows[i].vertex.value.."\n")
     
        else
     
          print("output state: "..model.transitions[k].arrows[i].vertex.value.."\n")
     
        end
     
      end

      if(model.transitions[k].resets) then
    
        for l,_ in pairs (model.transitions[k].resets) do
    
            print("resets: "..model.transitions[k].resets[l].value.."\n")
    
        end
    
      end
    
        print("action: "..model.transitions[k].letter.value.."\n")
    
    end

end
  return ptainfo

end
