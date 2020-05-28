# Regular Expressions
- Regular expressions can be thought of as a combination of literals and metacharacters
- To draw an analogy with natural language, think of literal text forming the words of this language, and the metacharacters defining its grammar
- Regular expressions have a rich set of metacharacters

# Literals 
- Simplest pattern consists only of literals. The literal "nuclear" would match to the following lines:
```R

```

- The literals "Obama" would match to the following lines
```R

```

# Regular Expressions
- Simplest pattern consists only of literals; a match occurs if the sequence of literal occurs anywhere in the text being tested
- What if we only want the word "Obama"? or sentences that would end in the word "Clinton", or "clinton" or "clinto"?
- We need a way to express
  - whitespace word boundaries
  - sets of literals
  - the beginning and end of a line
  - alternatives ("war" or "peace") Metacharacters to the rescue!

# Metacharacters
- Some characters represent the start of a line
```R

```
will match the lines
```R

```
$ represents the end of a line
```R

```
will match the lines
```R

```

# Character classes with (?)
- We can list a set of characters we will accept at a given point in the match
```R

```
will match the lines
```R

```
will match
```R

```
- Similarly, you can specify a range of letter [a-z] or [a-zA-Z]; notice that the order doesn't matter
```R

```
will match the lines
```R

```
- When used at the beginning of a character class, the "" is also a metacharacter and indicates matching characters NOT in the indicated class
```R

```
will match the lines
```R

```
