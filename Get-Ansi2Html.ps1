[CmdletBinding()]
Param()

Process
{
  <# Download ansi2html.sh. #>
  $ansi2html = [System.IO.Path]::Combine($PSScriptRoot, 'ansi2html.sh');
  Start-BitsTransfer -Source 'https://raw.githubusercontent.com/pixelb/scripts/master/scripts/ansi2html.sh' -Destination $ansi2html;
}
