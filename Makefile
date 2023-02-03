default:
	asciidoctor -D . --backend=html5 -o latest/index.html -a stylesheet=../foundation.css -a docinfo=shared -a imagesdir=images latest/index.adoc
	sed -i '' -e '/<body.*/rnav-bar.html' latest/index.html
	asciidoctor -D . --backend=html5 -o release-notes/index.html -a stylesheet=../foundation.css -a docinfo=shared release-notes/index.adoc
	sed -i '' -e '/<body.*/rnav-bar.html' release-notes/index.html