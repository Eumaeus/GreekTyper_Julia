julia> println(printReferenceGuide())
# Reference Guide

For upper-case alphabetic letters, this library accepts upper-case versions of the beta-code equivalent, *e.g.* 'W' → 'Ω', or the `asterisk + lower-case` encoding original to beta-code, *e.g.* '\*w' → 'Ω'.

## Valid Alphabetic Characters

Note that medial- and terminal-sigmas will be handled by the transcoding.

| Unicode | Beta-Code | Description |
|---------|-----------|-------------|
| α | `a` | alpha (Unicode 945) |
| β | `b` | beta (Unicode 946) |
| γ | `g` | gamma (Unicode 947) |
| δ | `d` | delta (Unicode 948) |
| ε | `e` | epsilon (Unicode 949) |
| ζ | `z` | zeta (Unicode 950) |
| η | `h` | eta (Unicode 951) |
| θ | `q` | theta (Unicode 952) |
| ι | `i` | iota (Unicode 953) |
| κ | `k` | kappa (Unicode 954) |
| λ | `l` | lambda (Unicode 955) |
| μ | `m` | mu (Unicode 956) |
| ν | `n` | nu (Unicode 957) |
| ξ | `c` | xi (Unicode 958) |
| ο | `o` | omicron (Unicode 959) |
| π | `p` | pi (Unicode 960) |
| ρ | `r` | rho (Unicode 961) |
| σ | `s` | sigma (Unicode 963) |
| τ | `t` | tau (Unicode 964) |
| υ | `u` | upsilon (Unicode 965) |
| φ | `f` | phi (Unicode 966) |
| χ | `x` | chi (Unicode 967) |
| ψ | `y` | psi (Unicode 968) |
| ω | `w` | omega (Unicode 969) |

## Valid Diacritic Marks



| Unicode | Beta-Code | Description |
|---------|-----------|-------------|
| ̀ | `\` | grave accent (Unicode 768) |
| ́ | `/` | acute accent (Unicode 769) |
| ̈ | `+` | diaeresis (Unicode 776) |
| ̓ | `)` | smooth breathing (Unicode 787) |
| ̔ | `(` | rough breathing (Unicode 788) |
| ͂ | `=` | circumflex (Unicode 834) |
| ͅ | `|` | iota-subscript (Unicode 837) |

## Valid Punctuation Characters



| Unicode | Beta-Code | Description |
|---------|-----------|-------------|
| tab | `tab` | tab character (Unicode 116) |
| return | `return` | carriage-return '\n' (Unicode 114) |
| space | `space` | space (Unicode 115) |
| " | `"` | quotation mark (Unicode 34) |
| ' | `'` | apostrophe, mark of elision (Unicode 39) |
| , | `,` | comma (Unicode 44) |
| - | `-` | hyphen (Unicode 45) |
| . | `.` | period (Unicode 46) |
| : | `:` | colon (Unicode 58) |
| ; | `;` | Greek question mark (Unicode 59) |
| ʹ | `#` | Greek numeral sign (Unicode 697) |

## Valid Editorial and Critical Signs



| Unicode | Beta-Code | Description |
|---------|-----------|-------------|
| / | `#17` | obelus (Unicode 47) |
| < | `#18` | reversed diple (Unicode 60) |
| > | `#15` | diple (Unicode 62) |
| ¶ | `%163` | paragraph sign (Unicode 182) |
| ̀ | `#19` | editorial combining grave accent (Unicode 768) |
| ́ | `#9` | Combining Acute Accent → editorial (Unicode 769) |
| ̣ | `?` | under-dot (Unicode 803) |
| Ͻ | `#10` | Reversed Lunate Sigma Symbol (Unicode 1021) |
| Ͼ | `#16` | dotted lunate sigma (Unicode 1022) |
| Ͽ | `#11` | Reversed Dotted Lunate Sigma Symbol (Unicode 1023) |
| — | `#12` | obelus (Unicode 8212) |
| † | `%` | dagger/crux (Unicode 8224) |
| ‡ | `%13` | double dagger (Unicode 8225) |
| ※ | `#13` | asteriskos (Unicode 8251) |
| ⁂ | `%158` | asterism (Unicode 8258) |
| ⁝ | `#53` | tricolon (Unicode 8285) |
| ⸎ | `#305` | editorial coronis (Unicode 11790) |
| ⸏ | `#6` | paragraphos (Unicode 11791) |
| ⸐ | `#8` | forked paragraphos (Unicode 11792) |
| ⸖ | `#14` | diple periestigmene (Unicode 11798) |

## Valid Archaic and Esoteric Characters



| Unicode | Beta-Code | Description |
|---------|-----------|-------------|
| ͱ | `#400` | heta (Unicode 881) |
| ϙ | `#3` | archaic koppa (Unicode 985) |
| ϛ | `#2` | stigma (Unicode 987) |
| Ϟ | `#4` | glyph variant of archaic koppa (Unicode 990) |
| ϟ | `#1` | koppa (Unicode 991) |
| ϡ | `#5` | sampi (Unicode 993) |

## Valid Mathematical Symbols



| Unicode | Beta-Code | Description |
|---------|-----------|-------------|
| ∞ | `#150` | infinity (Unicode 8734) |

## Examples

The following examples should give an idea of the relationship between beta-code and Unicode.

| Beta-Code | Unicode|
|-----|-----|
| `mh=nin a)/eide qea\ *phlhi+a/dew *)axilh=os` | μῆνιν ἄειδε θεὰ Πηληϊάδεω Ἀχιλῆος |
| `ou)lome/nhn, h(\ muri/' *)axaioi=s a)/lge' e)/qhke,` | οὐλομένην, ἣ μυρί' Ἀχαιοῖς ἄλγε' ἔθηκε, |
| `polla\s d' i)fqi/mous yuxa\s *)/ai+di proi+/ayen` | πολλὰς δ' ἰφθίμους ψυχὰς Ἄϊδι προΐαψεν |
| `h(rw/wn, au)tou\s de\ e(lw/ria teu=xe ku/nessin` | ἡρώων, αὐτοὺς δὲ ἑλώρια τεῦχε κύνεσσιν |
| `oi)wnoi=si/ te pa=si, *dio\s d' e)telei/eto boulh/,` | οἰωνοῖσί τε πᾶσι, Διὸς δ' ἐτελείετο βουλή, |
| `e)c ou(= dh\ ta\ prw=ta diasth/thn e)ri/sante` | ἐξ οὗ δὴ τὰ πρῶτα διαστήτην ἐρίσαντε |
| `*)atrei+/dhs te a)/nac a)ndrw=n kai\ di=os *)axilleu/s.` | Ἀτρεΐδης τε ἄναξ ἀνδρῶν καὶ δῖος Ἀχιλλεύς. |

julia> 
