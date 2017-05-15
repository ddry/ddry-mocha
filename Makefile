.PHONY: co coveralls mo mocha ta tape test

c- c-%:
	rm -rf spec usecase
	coffee -c$*o . source

coveralls:
	make tape tap
	istanbul cover ./node_modules/mocha/bin/_mocha ./node_modules/ddry/ddry.js \
	--report lcovonly -- -R spec && \
	cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js && \
	rm -rf ./coverage

mocha:
	./node_modules/.bin/mocha \
		--no-exit \
		./node_modules/ddry/ddry.js \
		--check-leaks

tap:
	node_modules/.bin/tap ./node_modules/ddry/ddry.js

tape:
	tape ./node_modules/ddry/ddry.js | node_modules/.bin/tap-spec

test: tape tap
