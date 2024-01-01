# *Ad Hoc* Broadcast, Trace, and Revoke

**Authors.**

- Ji Luo
  - [0000-0003-1225-5310](https://orcid.org/0000-0003-1225-5310)
  - [luoji@cs.washington.edu](mailto:luoji@cs.washington.edu)
  - Paul G. Allen School of Computer Science & Engineering,
    University of Washington, Seattle, USA
    - [https://ror.org/00cvxb145](https://ror.org/00cvxb145)

**Keywords.** `ad hoc,decentralized,distributed,traitor tracing,broadcast encryption,attribute-based encryption,functional encryption,obfuscation`

## Abstract (no manual line-breaks)

```text
Traitor tracing schemes [Chor–Fiat–Naor, Crypto ’94] help content distributors fight against piracy and are defined with the content distributor as a trusted authority having access to the secret keys of all users.  While the traditional model caters well to its original motivation, its centralized nature makes it unsuitable for many scenarios.  For usage among mutually untrusted parties, a notion of *ad hoc* traitor tracing (naturally with the capability of broadcast and revocation) is proposed and studied in this work.  Such a scheme allows users in the system to generate their own public/secret key pairs, without trusting any other entity.  To encrypt, a list of public keys is used to identify the set of recipients, and decryption is possible with a secret key for any of the public keys in the list.  In addition, there is a tracing algorithm that given a list of recipients’ public keys and a pirate decoder capable of decrypting ciphertexts encrypted to them, identifies at least one recipient whose secret key must have been used to construct the said decoder.

Two constructions are presented.  The first is based on functional encryption for circuits (conceptually, obfuscation) and has constant-size ciphertext, yet its decryption time is linear in the number of recipients.  The second is a generic transformation that reduces decryption time at the cost of increased ciphertext size.  A matching lower bound on the trade-off between ciphertext size and decryption time is shown, indicating that the two constructions achieve all possible optimal trade-offs, i.e., they fully demonstrate the Pareto front of efficiency.  The lower bound also applies to broadcast encryption (hence all mildly expressive attribute-based encryption schemes) and is of independent interest.

```

## Submission

This section is anti-chronological. Reviews are kept in OneNote.

### PKC 2024

- Submission #130
  - [Version 1](../paper.pdf/pkc24-ver1.pdf): SHA-256 `49e6972d`, 15 Oct 2023 7:29:50pm UTC
  - [Version 2](../paper.pdf/pkc24-ver2.pdf): SHA-256 `852c3d54`, 15 Oct 2023 7:47:54pm UTC
- Primary area `ADV`
- Topics:
  - Broadcast encryption (reason --- end result on definition, construction)
  - Identity/Attribute based encryption (reason --- end result on lower bound)
  - Other PKC-relevant topics (reason --- traitor tracing)

### TCC 2023

- Submission #118
  - [Version 1](../paper.pdf/tcc23-ver1.pdf): SHA-256 `28bde880`, 1 Jun 2023 2:32:56pm UTC
- Young researcher eligibility: Yes
- PC conflicts:
  - Aarushi Goel (2021 NTTR)
  - Aayush Jain (coauthorship)
  - Hoeteck Wee (2021 NTTR)
  - Jiahui Liu (2021 NTTR)
  - Mark Zhandry (2021 NTTR)
  - Stefano Tessaro (advisory)

### Eurocrypt 2023

- Submission #2
  - [Version 1](../paper.pdf/ec23-ver1.pdf): SHA-256 `49af5261`, 18 Sep 2022 10:17:43pm UTC
  - [Version 2](../paper.pdf/ec23-ver2.pdf): SHA-256 `38604be7`, 29 Sep 2022 9:52:35am UTC
- Early career eligibility: Yes
- Primary area: ADV (Public Key Primitives with Advanced Functionalities)
- Secondary area: THE (Theoretical Foundations)
- Topics:
  - FE, ABE and (H)IBE
  - Lower Bounds, Separations and Impossibility Results
  - Modelling and Design of Advanced Public-Key Primitives
  - Public-Key Encryption Schemes
  - Theory of Public-Key Cryptography
- Comments to Program Chairs: (empty)
- Resubmission: No
- Resubmission details: (empty)
- PC conflicts:
  - Marshall Ball (2021 UW postdoc)
