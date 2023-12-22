DIR = _site
FILES = index.html blog.html
ASSETS = assets
PROJECTS = fastnst enforcing-uniformity
PORT = 8000

serve: static
	python -m http.server -d $(DIR)

static: $(FILES)
	mkdir -p $(DIR)/
	cp $(FILES) $(DIR)/
	cp -rf $(ASSETS) $(DIR)/
	cp -rf $(PROJECTS) $(DIR)/

clean:
	rm -rf $(DIR)/*