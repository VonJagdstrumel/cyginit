param($setup)
$Input | foreach { $pkgs = $pkgs + $(If ($n++) {','}) + $_ }

& $setup `
    --delete-orphans `
    --local-package-dir $env:LOCALAPPDATA\Cygwin `
    --no-admin `
    --no-desktop `
    --packages $pkgs `
    --quiet-mode `
    --site https://ftp.fau.de/cygwin/ `
    --site https://ftp.lip6.fr/pub/cygwin/ `
    --upgrade-also
