rd ALStatementsDocs /s /q
echo "folder deleted"
md ALStatementsDocs
echo "folder recreated"

aldoc init -o .\\ALStatementsDocs\\ -t "C:\\Users\\ASL-D1\\Documents\\AL\\ALStatements\\Default Publisher_ALStatements_1.0.0.0.app"
echo Initialized

aldoc build -o .\\ALStatementsDocs\\ -s "C:\\Users\ASL-D1\\Documents\\AL\\ALStatements\\Default Publisher_ALStatements_1.0.0.0.app" 

echo Builded

docfx build .\ALStatementsDocs/docfx.json
echo "Docs built"

docfx serve .\ALStatementsDocs/_site -p 8089