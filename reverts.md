# Revert Commands

```powershell
# cic2024-2/cr3(tag): Skipped because this is a book-keeping commit.
# git revert --no-edit 185a786016fe207228a0366bd1ae2df22847d9bd # Submit camera-ready candidate 3.

# Skipped because this is a book-keeping commit.
# git revert --no-edit 3c7f9c35de38474ecfcab923f8500b57bfccc4dd # Submit camera-ready candidate 3 by email.

git revert --no-edit c566e47308d6ff3265497275df6f9fd4c52dacca # Fix bibliography.

# cic2024-2/cr2(tag): Skipped because this is a book-keeping commit.
# git revert --no-edit 37d35684a9ca481203998f655fef4207f3fbb95f # Submit camera-ready candidate 2.

# Skipped because this is a merge commit.
# git revert --no-edit bd6986bf9837d95d5f7d9a33d13053796f4ca816 # Merge bibliography edits.

# cic2024-2/cr1(tag): Skipped because this is a book-keeping commit.
# git revert --no-edit 2dd356509726ed54e061a2a1ced2bcaec3802c16 # Submit camera-ready candidate 1.

# git log 98dd29609efa3163fb2b8fcd55b2931e530cba60..01731ae410b9ee9b76a382e4bd9cb83c04c11889 --pretty=format:'git revert --no-edit %H # %s'
git revert --no-edit 01731ae410b9ee9b76a382e4bd9cb83c04c11889 # Work around a deficiency in IACR TeX-to-HTML.
git revert --no-edit 68a88fb7e00e017fc09937d39d17474d0a37fa16 # The bug is in my pdfLaTeX.
git revert --no-edit 1c5792a48615377920a946ad8f31dd9207e5bead # The bug is in my pdfLaTeX, not IACR CiC class.
git revert --no-edit 547df900fd53b80e68e687209562d985fcbec722 # Supply affiliation index even if it is obvious.
git revert --no-edit f7d00a1d87131bd10fe9663c1d8f9a5d85606c52 # Work around a conflict of IACR CiC and babel.
git revert --no-edit 7809806384a8b38a044f46fb188183cea177c089 # Work around a bug in IACR server.

# Skipped because this is a merge commit.
# git revert --no-edit 98dd29609efa3163fb2b8fcd55b2931e530cba60 # Merge bibliography edits.

# git log d8afc8b4010b4c967219e5d24ce78277a583b995..08d8775acd17a34142c7bdb90219856a154422fb --pretty=format:'git revert --no-edit %H # %s'
git revert --no-edit 08d8775acd17a34142c7bdb90219856a154422fb # Document the bug.
git revert --no-edit 1342e875fb9655196ee96720bd8b4d63635957b7 # Remove frame.
git revert --no-edit 70f901b5e27c334b98f59d0b2347bd50f971018a # Place floats.
git revert --no-edit 303d18429a6c69cb7bdfeb8036b04c8038bfca00 # Reword to avoid horizontal overflow.
git revert --no-edit 4f531a63765eda3396682f024f03e8047de37004 # Fix horizontal overflow of section heading.
git revert --no-edit 58c36e3a17029cca4f078df065080944ca452c9a # Fix horizontal overflow.
git revert --no-edit 743378718f885c2fd49fc952b364c52338b28055 # Heading alignment.
git revert --no-edit 52980baa19239a83c94adf3ec6287516f077f5c4 # Work around a bug of IACR CiC class.
git revert --no-edit 48c48d48cccfeb520b6c2a29980a1c9c0d9ef174 # Fix script position for IACR CiC fonts.

# Skipped because this is a merge commit.
# git revert --no-edit d8afc8b4010b4c967219e5d24ce78277a583b995 # Merge typesetting edits.

git revert --no-edit d26c28633bdb523e72c9cbe1a73f9a6eb97a83ab # Change format to final.

# Skipped because this is a merge commit.
# git revert --no-edit 709499a6f719a5279937b1170b3a34b0558ea71f # Merge content edits.

# Note that this ^^^ merge had conflicts, so might further reverting.

# cic2024-2/version3(tag): Skipped because this is a book-keeping commit.
# git revert --no-edit 0c168c93550d099022c11e49dcef906164d21045 # Resubmit to IACR CiC 2024 quarter 2 (fix subtitle).

# cic2024-2/version2(tag): Skipped because this is a book-keeping commit.
# git revert --no-edit f435861452d8e7ea67e5de9cd560049db23bb4c0 # Revise submission to IACR CiC 2024 quarter 2.

git revert --no-edit 56fdde37cd7a10c86ad46d38c1b56ac24bff4cb9 # Remove frames. Add notes.

# cic2024-2/version1(tag): Skipped because this is a book-keeping commit.
# git revert --no-edit b676baab770cbf87ab6cf4df1720c93d4bdda044 # Submit to IACR CiC 2024 quarter 2.

git revert --no-edit 9957efb58542c5b2a3f751eafab859acd7bd479a # Edit title.

# Skipped because this is a merge commit.
# git revert --no-edit f6a0c87a00d9122352700f019334d68594cf475e # Merge content edits.

# git log c95653db170474b70910d64ef9faa198b7d3bd9c..66a6d63a0b80fd83b471950f5b31add19e28595a --pretty=format:'git revert --no-edit %H # %s'
git revert --no-edit 66a6d63a0b80fd83b471950f5b31add19e28595a # Include organization (previously mistakenly excluded).
git revert --no-edit 9a98e5a880fca6638e6dd12de14fe9b89f1011e5 # Fix horizontal typesetting.
git revert --no-edit faf367c8c3450aa6e13c7a4b10f4fd87dce96ec9 # Fix horizontal typesetting after theorem style adjustment.
git revert --no-edit 32cc7c1ab0dd4e0bf6adc7d52579f73a98c9dd60 # Remove unused code of theorem styling.
git revert --no-edit f4362e5d5fb0dc04c2cb5d7553b51176d1bf8cf1 # Copy theorem styles from crypto-paper.cls.
git revert --no-edit d88abb43802a620fc8134036b823748640926289 # Fix horizontal typesetting.
git revert --no-edit 8d449127e15ebb8f549bb2fa8fbb1163f9666f63 # Remove crypto-paper.cls.
git revert --no-edit 4bfb4f93d20743193e2f82e67528fc3ee4e9a2ba # Adapt document to IACR CiC class.
git revert --no-edit e3558ee77f9dbd6ea12c20f8e4c55f0805d969c5 # Add IACR CiC LaTeX class.
```
