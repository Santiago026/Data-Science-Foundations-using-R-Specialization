# Regular Expressions 2
## Concepts
- ``` . ```
  - Used to refer to any character
- ``` | ```
  - Or; use it to combine two expressions
    - Subexpressions being called alternatives

## More Metacharacters
- "." is used to refer any character. So
```R
9.11
```
will match the lines
```R
its stupid the post 9-11 rules
if any 1 of us did 9/11 we would have been caught in days.
NetBois: scanning ip 203.169.114.66
Front Door 9:11:46 AM
Sings: 011899988881999119725...3!
```
## More Metacharacters: | 
- This does not mean "pipe" in the context of regular expressions; instead it translates to "or"; we can use it to combine two expressions, the subexpressions being called alternatives
```R
flood|fire
```
will match the lines
```R
is firewire like usb on none macs?
the global flood makes sense within the context of the bible
yeah ive had the fire on tonight
... and the floods, hurricanes, killer heatwaves, rednecks, gun nuts, etc.
```
## More MEtacharacters: |
- We can include any number of alternatives...
```R
flood|earthquake|hurricane|coldfire
```
will match the lines
```R
Not a whole lot of hurricans in the Arctic.
We do have earthquakes nearly every day somewhere in our State
hurricanes swirl in the other direction
coldfire is STRAIGHT!
'cause we keep getting earthquakes
```
## More Metacharacters: |
- The laternatives can be real expressions and not just literals
```R
^[Gg]ood|[Bb]ad
```
will match the lines
```R
good to hear some good knews from someone here
Good afternoon fellow american infidels!
good on you-what do you drive?
Katie...guess they had bad experiences...
my middle name is trouble, Miss Bad News
```
## More Metacharacters: (and)
- Subexpressions are often contained in parentheses to contrain the alternatives
```R
^([Gg]ood|[Bb]ad)
```
will match the lines
```R
bad habbit 
bad coordination today
good, because there is nothing worse than a man in kinky underwear
Badcop, its because people want to use drugs
Good Monday Holiday
Good riddance to Limey
```
## More Metacharacters: ?
- The question mark indicates that the indicated expresion is optional
```R
[Gg]eorge( [Ww]\.)? [Bb]ush
```
will match the lines
```R
i bet i can spell better than you and george bush combined
BBC reported that President George W. Bush claimed God told him to invade I
a bird in the hand is worth two george bushes
```
## One thing to note...
In the following
```R
[Gg]eorge( [Ww]\.)? [Bb]ush
```
we wanted to match a "," as a literal period; to do that, we had to "escape" the metacharacter, preceding it with a backslash In general, we have to do this for any metacharacter we want to include in our match
## More metacharacters:* and +
The * and + signs are metacharacters used to indicated repetition;* means "any number, including none, of the item" and + means "at least one of the item"
```R
(.*)
```
will match the lines
```R
anyone wanna chat? (14, m, germany)
hello, 20.m here... ( east area + drives + webcam )
(he means older men)
()
```

## More metacharacters: * and +
The * and + signs are metacharacters used to indicate repetition; * means "any number, including none, of the item" and + means "at least one of the item"
```R
[0-9]+ (.*)[0-9]+
```
will match the lines
```R
working as MP here 720 MP battallion, 42nd birgade
so say 2 or 3 years at colleage and 4 uni makes us 23 when and if we fin
it went down on several occasions for like, 3 or 4 *days*
Mmm its time 4 me 2 go 2 bed
```
## More metacharacters:{and}
{and} are referred to as itnerval quantifiers; the let us specify the minimum and maximum number of matches of an expression
```R
[Bb]ush( +[^ ]+ +){1,5} debate
```
will match the lines
```R
Bush has historically won all major debates he's done.
in my view, Bush doesn't need these debates..
bush doesn't need the debates? maybe you are right
That's what Bush supporters are doing about the debate.
Felix, I don't disagree that Bush was poorly prepared for the debate.
indeed, but still, Bush should have taken the debate more seriously.
Keep repeating that Bush smirked and scowled during the debate
```
## More metacharacters: and
- m,n means at least m but not more than n matches
- m means exactly m matches
- m, means at least m matches
## More metacharacters: (and)revisited
- In most implementations of regular expressions, the parentheses not only limit the scope of alternatives divided by a "|", but also can be used to "remember" text matched by the subexpression enclosed
- We refer to the matched text with \1, \2, etc.
## More metacharacters: (and) revisited
So the expression
```R
+([a-zA-Z] +\1 +
```
will match the lines
```R
time for bed, night twitter!
blah blah blah blah
my tattoo is so so itchy today
i was standing all all alone against the world outside...
hi anybody anybody at home
estudiando css css css css.... que desastritooooo
```
## More metacharacters: (and) revisited
The * is "greedy" so it always matches the *longest* possible string that satisfies the regular expression.
So
```R
^s(.*)s
```
matches
```R
sitting at starbucks
setting up mysql and rails
studying stuff for the exams
spaghetti with marshmallows
stop fighting with crackers
sore shoulders, stupid ergonomics
```
## More metacharacters: (and) revisisted
The greediness of* can be turned off with the ?, as in
```R
^s(.*?)s$
```
## Summary
- Regular expressions are used in many different languages; not unique to R
- Regular expressions are composed of literals and metacharacters that represent sets or classes of character/words
- Text processing via regular expressions is a very powerful way to extract data from "unfriendly" sources (not all data comes as a CSV file)
- Used with the functions ``` grep, grepl, sub, gsub ``` and others that involve searching for text strings (Thanks to Mark Hansen for some material in this lecture.)
