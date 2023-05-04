$files = Get-ChildItem -File -Filter "*.html"

echo "end"
foreach ($file in $files) {
    
    cat $file.Name
    (Get-Content $file.Name).Replace("Made with","") | Set-Content $file.Name
    (Get-Content $file.Name).Replace("Created with","") | Set-Content $file.Name
    (Get-Content $file.Name).Replace("Built with","") | Set-Content $file.Name
}
