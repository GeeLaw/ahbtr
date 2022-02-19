[CmdletBinding()]
Param()

Process
{
  <# Download ansi2html.sh. #>
  $ansi2html = [System.IO.Path]::Combine($PSScriptRoot, 'ansi2html.sh');
  Start-BitsTransfer -Source 'https://raw.githubusercontent.com/pixelb/scripts/master/scripts/ansi2html.sh' -Destination $ansi2html;

  <# Download LNCS files. #>
  $llncs2eid = [System.Guid]::NewGuid().ToString('n');
  $llncs2ezip = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), 'llncs2e-' + $llncs2eid + '.zip');
  $llncs2efolder = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), 'llncs2e-' + $llncs2eid);
  $llncs2ecls = [System.IO.Path]::Combine($llncs2efolder, 'llncs.cls');
  $splncs04bst = [System.IO.Path]::Combine($llncs2efolder, 'splncs04.bst');
  Invoke-WebRequest -Uri 'https://resource-cms.springernature.com/springer-cms/rest/v1/content/19238648/data/v4' -UseBasicParsing -OutFile $llncs2ezip;
  Expand-Archive -LiteralPath $llncs2ezip -DestinationPath $llncs2efolder;
  Remove-Item -LiteralPath $llncs2ezip -Force;
  [System.IO.File]::WriteAllText(
    [System.IO.Path]::Combine($PSScriptRoot, 'paper', '.laomian', 'llncs.cls'),
    [System.IO.File]::ReadAllText($llncs2ecls).Replace("`r`n", "`n")
  );
  [System.IO.File]::WriteAllText(
    [System.IO.Path]::Combine($PSScriptRoot, 'paper', '.laomian', 'splncs04.bst'),
    [System.IO.File]::ReadAllText($splncs04bst).Replace("`r`n", "`n")
  );
  Remove-Item -LiteralPath $llncs2efolder -Recurse -Force;
}
