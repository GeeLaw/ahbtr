# Ad Hoc (Decentralized) Broadcast, Trace, and Revoke

**Authors.**

- Ji Luo
  - [0000-0003-1225-5310](https://orcid.org/0000-0003-1225-5310)
  - [luoji@cs.washington.edu](mailto:luoji@cs.washington.edu)
  - Paul G. Allen School of Computer Science & Engineering,
    University of Washington, Seattle, USA
    - [https://ror.org/00cvxb145](https://ror.org/00cvxb145)

**Keywords.** `traitor tracing,obfuscation,attribute-based encryption`

## Abstract (manual line-breaks at column 80)

```text
Traitor tracing schemes [Chor–Fiat–Naor, Crypto ’94] help content distributors
fight against piracy and are defined with the content distributor as a trusted
authority having access to the secret keys of all users.  While the traditional
model caters well to its original motivation, its centralized nature makes it
unsuitable for many scenarios.  For usage among mutually untrusted parties, a
notion of *ad hoc* traitor tracing (naturally with the capability of broadcast
and revocation) is proposed and studied in this work.  Such a scheme allows
users in the system to generate their own public/secret key pairs, without
trusting any other entity.  To encrypt, a list of public keys is used to
identify the set of recipients, and decryption is possible with a secret key
for any of the public keys in the list.  In addition, there is a tracing
algorithm that given a list of recipients’ public keys and a pirate decoder
capable of decrypting ciphertexts encrypted to them, identifies at least one
recipient whose secret key must have been used to construct the said decoder.

Two constructions are presented.  The first is based on obfuscation and has
constant-size ciphertext, yet its decryption time is linear in the number of
recipients.  The second is a generic transformation that reduces decryption
time at the cost of increased ciphertext size.  A lower bound on the trade-off
between ciphertext size and decryption time is shown, indicating that the two
constructions achieve all possible optimal trade-offs.  The lower bound also
applies to general attribute-based encryption and may be of independent
interest.
```

## Abstract (no manual line-breaks)

```text
Traitor tracing schemes [Chor–Fiat–Naor, Crypto ’94] help content distributors fight against piracy and are defined with the content distributor as a trusted authority having access to the secret keys of all users.  While the traditional model caters well to its original motivation, its centralized nature makes it unsuitable for many scenarios.  For usage among mutually untrusted parties, a notion of *ad hoc* traitor tracing (naturally with the capability of broadcast and revocation) is proposed and studied in this work.  Such a scheme allows users in the system to generate their own public/secret key pairs, without trusting any other entity.  To encrypt, a list of public keys is used to identify the set of recipients, and decryption is possible with a secret key for any of the public keys in the list.  In addition, there is a tracing algorithm that given a list of recipients’ public keys and a pirate decoder capable of decrypting ciphertexts encrypted to them, identifies at least one recipient whose secret key must have been used to construct the said decoder.

Two constructions are presented.  The first is based on obfuscation and has constant-size ciphertext, yet its decryption time is linear in the number of recipients.  The second is a generic transformation that reduces decryption time at the cost of increased ciphertext size.  A lower bound on the trade-off between ciphertext size and decryption time is shown, indicating that the two constructions achieve all possible optimal trade-offs.  The lower bound also applies to general attribute-based encryption and may be of independent interest.
```
