```julia
function my_function(x)
  try
    if x > 0
      return x^2
    elseif x == 0
      return 0
    else
      error("Input must be non-negative")
    end
  catch e
    println("Error: ", e)
    return NaN  # Or another appropriate default value
  end
end

result = my_function(-1)
println(result) # Output: Error: Input must be non-negative
                 #          NaN
result = my_function(2)
println(result) # Output: 4
```