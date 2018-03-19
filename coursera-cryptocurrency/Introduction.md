# Introduction to Crypto and Cryptocurrencies

## Cryptographic Hash Functions

### Hash Function
- Takes any string as input
- Fixed-size output (256 bits)
- Efficiently computable

### Security Properties
- Collision-free
- Hiding
- Puzzle-friendly


#### 1. Collision-free
Nobody can find `x` and `y` such that `x != y` and `H(x) = H(y)`.

**Collisions exists, but can anyone find them?**

#### How to find a collision
- Try `2 ** 130` randomly chosen inputs
- 99.8% of chance that two of them will collide

** This works no matter what `H` is... but it takes too long to matter.**

#### Application: Hash as a message digest
- If we know `H(x) = H(y)` it's safe to assume that `x = y`.
- To recognize a file that we saw before, just remember its hash.
- Useful because the hash is small

#### 2. Hiding
If `r` is chosen from a probability distribution that has *high min-entropy*,
then given `H(r | x)`, it is infeasible to find `x`.


*High min-entropy* means that the distribution is **very spread out**, so that no particular value is chosen with more than negligible probability.

#### Application: Commitment
Want to **seal a value in an envelope**, and **open the envelope** later.

Commit to a value, reveal it later.

#### Commitment API
You can commit to message, that is going to return two values, a commitment and a key. The commitment is the **envelope** and **key** is the secret key for unlocking the envelope.
```
(com, key) := commit(msg)
```

Later, to open the envelope, we're going to publish the key, and the message we committed to, and then anybody can use this verify call with the commitment that we published previously, the key and the message to check the validity of our opening envelope.
```
match := verify(com, key, msg)
```

**Security properties**
- Hiding: Given `H(key | msg)`, infeasible to find `msg`
- Binding: Infeasible to find `msg != msg'` such that `H(key | msg) == H(key | msg')`


#### 3. Puzzle-friendly
For every possible output value `y`,
if `k` is chosen from a distribution with *high min-entropy*,
then it is infeasible to find `x` such that `H(k | x) = y`.


## Hash Pointers and Data Structure
Pointer to where some info is stored,
and (cryptographic) hash the info

If we have a hash pointer, we can:
- Ask to get the info back
- Verify that it hasn't changed

#### Merkle Tree
- Tree holds many items but just need to remember the root hash
- Can verify membership of `O(log n)` time/space
