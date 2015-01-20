$pdflatex = 'xelatex --file-line-error --shell-escape -interaction=nonstopmode  %O %S';
$pdf_previewer = "start evince %O %S";
$pdf_update_method = 0;
$pdf_mode = 1;
$preview_continuous_mode = 1;

@default_files = ('OlivierBlanvillainResume.tex');

add_cus_dep('md', 'mdtex', 0, 'md2tex');
sub md2tex {
  return system("cat $_[0].md | pandoc -f markdown -t latex -o $_[0].mdtex");
};
