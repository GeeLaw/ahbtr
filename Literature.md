# Literature Survey

## Development of Notions and Techniques

| Citation | Notion |
| :------- | :---- |
| `C:FiaNao93` | BE |
| `C:ChoFiaNao94,C:NaoPin98` | (threshold) TT (cf. journal) |
| `JC:FiaTas01` | dynamic TT (cf. conference) |
| `INDOCRYPT:MuSusLin03` | IB-BE |
| `EC:ChaPhaPoi05` | public tracing |
| `EC:BonSahWat06` | PLBE |
| `PKC:ADMNPS07` | IB-TT (exponentially many groups, each group polynomial, tracing targets group) |
| `EC:NisWicZha16` | embedded identity (exponential identity space; oracle jump) |
| `TCC:Chase07` | MA-ABE |
| `ESORICS:JinLot07` | renewable tracing |
| `DHMR08` | AH-TBE |
| `ACNS:KiaPeh09` | rebroadcast attacks |
| `CCS:WQZD10` | AH-BE |
| `SCN:PhaPoiStr12` | decentralized dynamic BE |
| `RSA:LDZW13` | MA-AB-TT |
| `CCS:LiuCaoWon13` | AB-TT |
| `EC:Nishimaki13` | (not the proposer) watermarking |
| `EPRINT:GGJS13,EPRINT:GKLSZ13` | MI-FE |
| `PKC:LYJP14` | GE-TT (what's group encryption?) |
| `EPRINT:MaZha17` | encryptor combiner |
| `AC:CDGPP18` | (proposer?) MC-FE |
| `C:GKRW18` | risky TT |
| `TCC:CVWWW18` | mixed FE |
| `TCC:Zhandry20` | quantum tracing |
| `ITCS:ACFGOT20` | AH-MI-FE |
| `EPRINT:GKWW20` | TT-PRF |
| `MalTraTri20` | decentralized BE |
| `C:CDGPP20` | dynamic decentralized FE |
| `C:Zhandry20` | user expansion compiler (naive PLBE), TBE, MTB |
| `RSA:DoPhaPoi20` | (proposer?) FE-TT |
| `EPRINT:AmbGay21` | revisited of MA-ABE |
| `C:GoySonSri21` | TT-SS |

`EPRINT:MaZha17` is for correlated encryptors.

## Broadcast/Revocation Efficiency

Citations are from `EC:AgrYam20`. The point of these citations is to show the difficulty in improving `|ct| * T_Dec` for AH-BTR, since it naturally implements a broadcast encryption scheme.

- `poly(k)` is ignored, where `k` is the security parameter.
- `N` is the total number of users, which, only appearing as `poly(logN)`, is absorbed by `poly(k)` thus ignored in identity-based schemes.
- `S,R` are number of recipients, non-recipients (S = set, R = revoked).
- Special: B (broadcast), R (revocation), I (identity-based), assumption.

| Citation | `mpk` | `sk` | `ct` | `T_Dec` | Special |
| :------- | :---: | :--: | :--: | :-----: | :------ |
| `C:BonGenWat05` | `N^a` | `1` | `N^b` | `min{S,R}` | `a+b=1`, B/R, `l`-BDHE |
| `EC:GenWat09` | `S^a` | `1` | `S^b` | `S^a` | `a+b=1`, B, I, pairing |
| `PAIRING:DelPaiPoi07` | `N` | `1` | `R` | `R` | R, pairing |
| `PAIRING:DelPaiPoi07` | `N` | `N` | `1` | `R^2` | R, pairing |
| `AC:Delerablee07` | `S` | `1` | `1` | `S` | B, I, pairing |
| `EPRINT:SakFur07` | `S` | `1` | `1` | `S` | B, I, pairing |
| `PKC:AttLib10` | `R` | `R^a` | `R^b` | `R^a` | R, I, pairing |
| `C:BonZha14` | `N` | `1` | `1` | `N` | B/R, obfuscation |
| `C:BonWatZha14` | `1` | `1` | `1` | `S` | B, I, `log(N)`-linear map |
| `EC:AgrYam20,TCC:AgrWicYam20` | `1` | `1` | `1` | `S` | B, pairing+LWE |
| `EPRINT:BraVai20` | `1` | `1` | `1` | `S` | B, lattice-inspired, no reductionist proof |

Notes:

- `C:FiaNao93` is worse than naive if full collusion resistance is required.
- Public attributes (i.e., recipient set) are never counted in ciphertext size.
- Are `EPRINT:SakFur07` and `AC:Delerablee07` concurrent? They read very similar.
- `PKC:AttLib10` reduces the number of pairing to constant, but not the total time. (Constant number of pairings is kind of expected, sicne we usually pair across keys and ciphertext, so using associativity, i.e., pair(source group operations) = target group operations(pair), we must be able to make the number of pairings constant. See `LL20b` footnote.)
- `C:BonZha14` considers some kind of *ad hoc* BE, but its definitions are not on par with us. Syntactically, there is global setup, maximum broadcast set size, and interactive joining (their construction do not use interaction). Correctness-wise, they do not consider adversarial recipients (some joiners use malformed keys). Security-wise, they do not consider adversarial global parameters.

## BTR Schemes

These references are fished from `https://www.cs.utexas.edu/~dwu4/papers/TraceRevoke.pdf` (in this section, `KimWu`). The goal of this section of literature is about prior schemes of BTR per the modern definition (those deemed irrelevant in this section might still be relevant as a related work of this work, due to other reasons).

No combinatorial citations are relevant, with reason in parentheses:

- `C:ChoFiaNao94` (only tracing, not BTR)
- `C:NaoPin98` (only tracing, not BTR)
- `StaStiWei01` (title is "Combinatorial properties of frameproof and traceability codes"; a study of some information-theoretical security)
- `ChoFiaNaoPin00` (revised version of `C:ChoFiaNao94` and `C:NaoPin98`)
- `C:NaoNaoLot01` (`KimWu` says weaker notion of tracing)
- `C:HalSha02` (no tracing)
- `DodFaz02` (title is "Public key broadcast encryption for stateless receivers"; only achieves weak tracing per `KimWu`)
- `BonNao08` (title is "Traitor tracing with constant size ciphertext"; this has large secret key, does only tracing, but not BTR)

For the algebraic citations, the irrelevant ones:

- `KD98`, `NP00`, `LPSS14`, `KT15`, `NWZ16`, `ABP+17` (only against bounded collusion, according to `KimWu`).
- `BSW06` (only tracing, not BTR)
- `GKW18` (only tracing, secret tracing, not BTR)

The relevant ones:

- `BW06` (sqrt-size).
- `GKSW10` (ePrint 2009/532/20101020:084858 p.9 `Setup` algo. secret key should be `K_(x,y)={... for all i != y, u_i^(sigma_(x,y))}` not `u_y`, and it should be mentioned that `sigma_(x,y)`'s are random values sampled by `Setup` then discarded except as computed into keys), this is the prime-order version of `BW06`. The scheme heavily relies on key correlation and it's not clear how to adapt it to the ad hoc setting like in `KolMalWee23`.
- `CVW+18a` attribute-based TT (whose functionality includes BTR), only secret tracing; but when applied to BTR for arbitrary recipient set, the scheme is less efficient than (dominated by, so there's no point in doing it) trivial scheme because LWE-based ABE (at that time) requires `|ct|=Omega(|x|)`, where `x` would encode an arbitrary recipient set and hence has size `Omega(N)`.
- `GVW19` requires positional witness encryption, optimal size, public tracing.
- `GQWW19` the famous `N^eps` scheme, secret tracing, combining pairing and LWE. It is not clear how this can be applied to AH scenario.

There's also `NWZ16` (obfuscation-based, non-falsifiable) and `AKYY23` (obfustopia, falsifiable, FE + special ABE) and `JLL23` (obfustopia, falsifiable version, just FE).

## Lower Bounds

From search engine

- `broadcast encryption bound`
- `attribute based encryption bound`
- `attribute based encryption lower bound`
- `functional encryption bound`
- `functional encryption lower bound`
- `predicate encryption bound`
- `predicate encryption lower bound`

and `crypto.bib` with `title` matching `bound` and matching `broadcast|attribute|functional|predicate`:

- `AFRICACRYPT:AusKre08`: `|ct|`-only lower bound, specific to subset-cover schemes; upper bound has constant `T_Dec` and matches ours for `r ~ n/2`.
- `AC:KYDB98`: `|sk|`-only bound, only works for IT-secure schemes.
- `EC:LubSta98`: `|ct|`, `|sk|` bounds (storage-only) for IT-secure schemes.
- `ITC:DLY21` a.k.a. [ePrint 2020/618](https://eprint.iacr.org/2020/618): possibly related, `|ct|` bound, only for IT-secure schemes.
- `EC:BluCre94`: `|ct|`, `|sk|` bounds (storage-only), only for IT-secure schemes.
- `C:GayKerWee15` a.k.a. [ePrint 2015/665](https://eprint.iacr.org/2015/665): lower bound for CDS, an IT object, applies to `|ct|`, `|sk|` (storage-only) of specific kinds of ABE.
- `AC:KatYer09` a.k.a. [KY](https://www.cs.umd.edu/~jkatz/papers/PredEncProc.pdf): `|sk|`-only bound (storage-only), only BB constructions (essentially combinatorial).

They need to be investigated and maybe we can claim our bound is the first of its kind (fully generic, i.e., does not restrict techniques, space-time trade-off for BE/ABE).

**Unrelated Ones.** They are moved from the list above.

- `C:AGVW13`: an impossibility lower bound (not efficiency trade-off), unrelated.
- `FOCS:GoyKinSak05`: paper has nothing to do with cryptographic security, unrelated.
- `IMA:KobWatShi21`: `|ct|` bound for anonymous BE, which is already `Omega(N)`, not for ABE, unrelated.
- `PODC:Newport13`: paper has nothing to do with cryptographic security, unrelated.
- `PODC:KusMan93`: paper has nothing to do with cryptographic security, unrelated.
- `SODA:TseKir07`: paper has nothing to do with cryptographic security, unrelated.
- `STOC:WooZha12`: paper has nothing to do with cryptographic security, unrelated.
- `EPRINT:PatMuk18`: unrelated.
- `JC:GolNasRus01`: unrelated.
- [DOI 10.1007/978-3-642-36373-3_12](https://link.springer.com/chapter/10.1007/978-3-642-36373-3_12): `|ct|` bound for anonymous BE, which is already `Omega(N)`, not for ABE, unrelated.
- `C:AgrMaiYam19`: conditional lower bound on feasibility / construction difficulty / lack of techniques, unrelated.
- [Master's thesis -- Gorbunov](https://cs.uwaterloo.ca/~sgorbuno/publications/MSc_Gorbunov.pdf): size lower bound / impossibility for simulation-secure FE.
- [Course Project Liu](https://crypto.stanford.edu/cs359c/17sp/projects/GusLiu.pdf): `C:AGVW13`
- [Lewi-Wu ORE](https://www.cs.utexas.edu/~dwu4/papers/BlockORE.pdf): unrelated.
- [DOI 10.1007/978-3-030-03810-6_7](https://dl.acm.org/doi/abs/10.1007/978-3-030-03810-6_7): unrelated.
- [ePrint 2013/364](https://eprint.iacr.org/2013/364): unrelated.
- [ePrint 2000/017](https://eprint.iacr.org/2000/017): unrelated.
- [BVW](https://drops.dagstuhl.de/opus/volltexte/2018/9940/pdf/LIPIcs-FSTTCS-2018-41.pdf): unrelated (lower bound for inner-product encodings, an IT object; paper did not explicitly claim connection with encryption schemes, but it seems that the IT lower bound explains optimality under current techniques of using pairing).
- [PhD thesis -- Zhang](https://rucore.libraries.rutgers.edu/rutgers-lib/64844/PDF/1/play/): unrelated.
