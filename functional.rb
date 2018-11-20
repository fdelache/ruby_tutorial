states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# urls: Imperative version
def functional_urls(states)
  states.collect { |s| urlify(s) }
        .collect { |s| "https://example.com/" + s }
end

def urlify(state)
  state.downcase.split.join('-')
end

p functional_urls(states)

def functional_singles(states)
  states.reject { |state| state.split.length > 1 }
end

p functional_singles(states)

def functional_dakota(states)
  states.select { |state| state.include?("Dakota") }
        .reject { |state| state.split.length == 1 }
end

p functional_dakota states

p (1..10).reduce(:+)

def functional_lengths(states)
  states.inject({}) { |lengths, state| lengths[state] = state.length; lengths }
end

p functional_lengths(states)

def product_elements(numbers)
  numbers.reduce(:*)
end

p product_elements((1..10))
