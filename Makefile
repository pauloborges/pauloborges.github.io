BUILD_PREFIX = public
BUILD_BRANCH = master
GIT_REPO = git@github.com:pauloborges/pauloborges.github.io

all: serve

serve:
	hugo serve

build:
	hugo

publish:
	git subtree push --prefix=$(BUILD_PREFIX) $(GIT_REPO) $(BUILD_BRANCH)

update:
	git subtree pull --prefix=$(BUILD_PREFIX) $(GIT_REPO) $(BUILD_BRANCH)
