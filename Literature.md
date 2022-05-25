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

## Traitor Tracing Efficiency and Security

Some reuse my survey of literature in `GonLuoWee`. (Insufficient survey as of this commit.)

- `poly(k)` is ignored, where `k` is the security parameter.
- `N` is the number of users.
- Special: P (public tracing), A (adaptive security), G (exponentially many groups), I (exponentially many users in each group), assumption.

| Citation | `mpk` | `sk` | `ct` | `T_Dec` | Special |
| :------- | :---: | :--: | :--: | :-----: | :------ |
| `C:Zhandry20` | `1` | `1` | `N` | `1` | PA, naive PLBE with IBE |
| `CCS:BonNao08` | `1` | `N^2` | `1` | ??? | (?A), fingerprinting with IBE and threshold elimination |
| `ICITS:BilPha08` | `1` | `N^2` | `1` | ??? | (?A), ??? with IBE |
| `EC:BonSahWat06` | `N^(1/2)` | `1` | `N^(1/2)` | ??? | (?A), composite-order group |
| `CCS:BonWat06` | `N^(1/2)` | `N^(1/2)` | `N^(1/2)` | ??? | P(?A), composite-order group |
| `TCC:Wee20` | `N^(1/2)` | `1` | `N^(1/2)` | ??? | P(?A), PLBE from QFE from bi-k-Lin |
| `C:Zhandry20` | `N^(1/3)` | `N^(1/3)` | `N^(1/3)` | ??? | (?A), GGM |
| `GonLuoWee` | `N^(1/3)` | `1` | `N^(1/3)` | ??? | A, bi-k-Lin |

## BTR Efficiency

## Specialties
