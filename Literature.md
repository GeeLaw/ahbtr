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
