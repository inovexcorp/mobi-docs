#!/bin/bash

insert_nav() {
    filename=$1
    sed -i '' -e '/<body.*/rnav-bar.html' $filename
}

asciidoctor_user_manual() {
    filename=$1
    output=${filename/adoc/html}
    asciidoctor -D . --backend=html5 -o $output -a stylesheet=../foundation.css -a docinfo=shared -a imagesdir=images $filename
}

# Latest User Manual
echo "Creating latest User Manual"
asciidoctor_user_manual "latest/index.adoc"
insert_nav "latest/index.html"

# Legacy User Manuals
for filename in *.*/index.adoc; do
    echo "Creating legacy User Manual for $filename"
    asciidoctor_user_manual $filename
    output=${filename/adoc/html}
    insert_nav $output
done

# Release Notes
echo "Creating Release Notes"
asciidoctor -D . --backend=html5 -o release-notes/index.html -a stylesheet=../foundation.css -a docinfo=shared release-notes/index.adoc
insert_nav "release-notes/index.html"