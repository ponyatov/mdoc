# NLTK
## Native Language Tool Kit

[[NLTK/Rust]]

- https://users.rust-lang.org/t/interest-for-nlp-in-rust/15331/6

Worth pointing out for anyone who does not know, [[NLTK]] was started by the linguist Stephen Bird, and over the years had significant work contributed by graduate students… much of this was happening in an academic setting and funded by grants.  
Far as I know there are not many academics using Rust… unless they are computer science academics the typical target of PL is something perceived as “easy” to pick up ([[R/R]], [[Python/Python]], [[Matlab/Matlab]], [[Julia/Julia]]).

![[danieldk]]


<hr>

Well. For NLP you mostly need (maybe not all of these):

-   [[NLTK/stemmer]]s, [[NLTK/tokenizer]]s, … it is present somewhere, but not in one consistent crate, especially for other things than english
-   something equivalent to [[CountVectorizer]] in Python (you can do it yourself in Rust, not that hard)
-   [[NLTK/softmax regression]] over sparse data, we do not have it right now
-   some deep learning library which can work with text, we have that [https://github.com/usamec/cntk-rs/blob/master/examples/sparse_ops_and_word_embeddings.rs 129](https://github.com/usamec/cntk-rs/blob/master/examples/sparse_ops_and_word_embeddings.rs), but it is hard to use, since it is just low level wrapper
- [ ]   HMM, [[NLTK/CRF model]]s - not sure
-   something like [[NLTK/Chainer]] deep learing library to work with [[NLTK/tree model]]s - again not sure

And as HadrienG said, it is quite hard to justify not using Python. I am interested in this, but not enough to put a lot of time into it !

<hr>

If this could be useful, I’ve implemented [[NLTK/whatlang]], a library for natural language detection based on trigrams. The library supports 83 languages, does not require any databases and works extremely fast.

You can play with online demo (built with WASM) here: [https://www.greyblake.com/whatlang/ 107](https://www.greyblake.com/whatlang/)

