# Atomic operations

Another very important factor is [[Atomic operations|atomic]] memory operations. Atomic access works on a whole word basis - any [[unaligned memory|unaligned access]] by nature cannot be guaranteed to be atomic as it will probably involve more than one access. To support atomic operations, alignment must be minmally on [[word]] boundaries.
