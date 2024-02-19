# My train of thoughts when I was designing an application

## Thoughts on length of the digest:
Example alphabet length (a)

Example term length (t)

Amount of possible combinations formula:
> a^1 + a^2 + a^3 + ... + a^t

Alphabet: (a-z)(26) + (A-Z)(26) + (0-9)(10) = 62

Term length (t): 8

```ruby
a = 0; (1..8).each{|e| a+=62**e}
```

Possible combinations:
> 221919451578090 ( 221 trillion 919 billion 451 million 578 thousand 90)

## 

