$rootDir = (Get-Location).Path
Get-ChildItem -Recurse -Include *.cpp | ForEach-Object {
 $relativePath = ($_.FullName).Replace($rootDir + "\", "")
 $relativePath
}