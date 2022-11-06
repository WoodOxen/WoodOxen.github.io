#! /bin/zsh
JEKYLL_VERSION=latest

UPDATE_BUNDLE=false
INSTALL_BUNDLE=false
BUILD_PAGE=false
VIEW_PAGE=false

case "$1" in
    --bundle-update )
        UPDATE_BUNDLE=true;
        shift ;;
    --bundle-install )
        UPDATE_BUNDLE=true;
        INSTALL_BUNDLE=true;
        shift ;;
    --build )
        BUILD_PAGE=true;
        shift;;
    --view )
        VIEW_PAGE=true;
        shift;;
esac

if ${UPDATE_BUNDLE}  ; then
    docker run --rm \
        -v ${PWD}:/srv/jekyll \
        -it jekyll/jekyll:${JEKYLL_VERSION} \
        bundle update
fi

if ${INSTALL_BUNDLE} ; then
    docker run --rm \
        -v ${PWD}:/srv/jekyll \
        -it jekyll/jekyll:${JEKYLL_VERSION} \
        bundle install
fi

if ${BUILD_PAGE} ; then
    docker run --rm \
        -v ${PWD}:/srv/jekyll \
        -it jekyll/jekyll:latest \
        jekyll build
fi

if ${VIEW_PAGE} ; then
    docker run --rm \
        -v ${PWD}:/srv/jekyll \
        -p 4000:4000 \
        -it jekyll/jekyll:${JEKYLL_VERSION} \
        jekyll serve
fi