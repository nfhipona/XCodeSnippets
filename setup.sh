#!/bin/bash
# Type: Setup script
# Created: August 2026

# equivalent to path: ~/Library/Developer/Xcode/UserData/CodeSnippets
symlinkdirectory="/Users/$USER/Library/Developer/Xcode/UserData/CodeSnippets"
xcodesnippets=$(pwd)/CodeSnippets
filter=".codesnippet"

# Symbolic Link
echo ""
echo "--------------"
echo ""
echo "⚙️  Starting SymLink configuration for '$xcodesnippets'"

# if exists, copy current snippets found in ~/Library/Developer/Xcode/UserData/CodeSnippets/
echo "↳ Checking for current user's snippets... 🫆🕵️‍♂️"
if [ ! -z "$(ls -A $symlinkdirectory 2>/dev/null | grep $filter)" ]; then
    echo ""
    echo "🎉 Snippets found ‼️"
    echo "📝 Lists of snippets found on path '$symlinkdirectory':"
    ls -l $symlinkdirectory | grep $filter

    echo ""
    echo "⚙️  Creating snippets backup copy to directory $xcodesnippets ‼️"
    cp -aiv $symlinkdirectory/*$filter $xcodesnippets
    echo "↳ Done."
    echo ""
else
    echo "↳ No active user's snippets found. 🕵️‍♂️"
fi

# remove ~/Library/Developer/Xcode/UserData/CodeSnippets/ if exists
echo ""
echo "↳ Prepare target path"
rm -rf $symlinkdirectory
echo "↳ Done."
echo ""

sleep 0.5

echo "🔗 Linking directory '$xcodesnippets' to temp '$symlinkdirectory'"
ln -sf $xcodesnippets $symlinkdirectory
echo "↳ Done."
echo ""

sleep 0.5

if [ ! -z "$(ls -A $symlinkdirectory)" ]; then
    echo "↳ SymLink successful 🎉"
    ls -l $symlinkdirectory
    
    echo ""
    echo "📝 Lists of files found on path '$symlinkdirectory':"
    ls -A $symlinkdirectory
else
    echo "↳ SymLink failed ‼️"
fi

echo ""
echo "--------------"

echo ""
echo ""

echo "❇️  Please enjoy the booty!"
sh lib/boooty.sh

echo ""
echo ""