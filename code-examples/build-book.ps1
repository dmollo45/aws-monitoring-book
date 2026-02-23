# Build AWS Monitoring Book
Write-Host "Building AWS Infrastructure Monitoring Book..." -ForegroundColor Green

pandoc manuscript\front-matter\*.md `
       -o aws-monitoring-book-complete.pdf `
       --toc `
       --toc-depth=3 `
       --number-sections `
       --highlight-style=tango `
       --pdf-engine=xelatex `
       -V geometry:margin=1in `
       -V fontsize=11pt `
       -V documentclass=book `
       -V title="AWS Infrastructure Monitoring & Log Analytics Pipeline" `
       -V author="David Mollo"

if ($?) {
    Write-Host "✓ Book built successfully!" -ForegroundColor Green
    Write-Host "Output: aws-monitoring-book-complete.pdf" -ForegroundColor Cyan
    Start-Process aws-monitoring-book-complete.pdf
} else {
    Write-Host "✗ Build failed. Check errors above." -ForegroundColor Red
}
