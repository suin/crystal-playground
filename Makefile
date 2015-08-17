.PHONY: readme

TMP_FILE=/tmp/readme
BASE_URL=https://github.com/suin/crystal-playground/blob/master/

readme:
	@echo " File | Description" > $(TMP_FILE)
	@echo "-------|----------------" >> $(TMP_FILE)
	@for file in $$(find * -type f -name '*.cr' -not -path './.crystal/*'); do \
		description=$$(head -n 1 $$file | cut -d ' ' -f 2-); \
		command=$$(echo crystal run $$file); \
		url=$(BASE_URL)$$file; \
		echo "[\`$$file\`]($$url) | $$description <br> \`$$command\` " >> $(TMP_FILE); \
	done
	@content=$$(cat $(TMP_FILE) | php -r 'echo preg_replace("/<!--begin-->.+<!--end-->/s", "<!--begin-->\n" . file_get_contents("php://stdin") . "\n<!--end-->", file_get_contents("README.md"));'); \
	echo "$$content" > README.md
