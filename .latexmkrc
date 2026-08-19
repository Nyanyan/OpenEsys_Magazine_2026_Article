BEGIN {
    mkdir '.texlive-cache' unless -d '.texlive-cache';
}

$pdf_mode = 4;
$out_dir = 'out';
$aux_dir = 'out';
$synctex = 1;
$ENV{'TEXMFVAR'} = '.texlive-cache';
$ENV{'TEXMFCACHE'} = '.texlive-cache';
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
