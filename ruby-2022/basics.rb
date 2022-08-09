# By the end of this lesson, you should be able to do the following:

# List the basic arithmetic operators and what they do.
# Describe the difference between an integer and a float and how to convert between the two.
# Explain string interpolation and concatenation.
# Describe what escape characters are, and list several examples.
# Define what a symbol is and how it differs from a string.
# Explain what the Booleans true, false, and nil represent.

1+1



# String

## Concatenation
"Welcome "  + "to " + "Odin!"

"Welcome  " << "to " << "Odin!"

"Welcome ".concat("to ").concat("Odin!")

## Interpolation
name = "Test"
"Welcome #{name}"