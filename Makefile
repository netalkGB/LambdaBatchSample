build:
	- rm -r out
	- rm -r .aws-sam
	npm run transpile --prefix ./src
	cp ./src/package.json ./out/
	sam build --use-container

test:
	npm run test --prefix ./src

deploy:
	- rm -r out
	- rm -r .aws-sam
	npm run transpile --prefix ./src
	cp ./src/package.json ./out/
	sam build --use-container
	sam deploy --parameter-overrides NodeEnv=production

invoke:
	- rm -r out
	- rm -r .aws-sam
	npm run transpile --prefix ./src
	cp ./src/package.json ./out/
	sam build --use-container
	sam local invoke --docker-network host --parameter-overrides NodeEnv=development

clean:
	- rm -r .aws-sam
	- rm -r out