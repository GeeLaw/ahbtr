$CryptoBib = [System.IO.Path]::Combine($PSScriptRoot, '..', 'paper', 'crypto.bib');
$LiteratureCsv = [System.IO.Path]::Combine($PSScriptRoot, 'Literature.csv');
$content = Get-Content -LiteralPath $CryptoBib;
$matches = Select-String -LiteralPath $CryptoBib -Pattern 'ad[ -]?hoc|de-?central|broad-?cast|revoke|revoking|revocation|trace(able)?|tracing|piracy|pirate|water-?mark|(multi[- ]input).*?(fe|functional encryption)';
$matches = $matches | Where-Object Line -Like '*title*';
$pattern_id = [regex]'^@.*?\{(.*?),$';
$pattern_title = [regex]'^\s*title\s*=\s*"(.*?)",';
$entries = $matches | ForEach-Object {
  $i = $_.LineNumber - 1;
  While ($content[$i] -NotLike '@*{*,')
  {
    $i = $i - 1;
  }
  [pscustomobject]@{
    'Id' = $pattern_id.Replace($content[$i], '$1');
    'Title' = $pattern_title.Replace($_.Line, '$1')
  };
};
$entries = $entries | Sort-Object Title, Id;
$entries | ConvertTo-Csv -NoTypeInformation | Set-Content $LiteratureCsv;
