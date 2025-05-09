FILTER = cd srcs && docker-compose up --build -d 2>&1 | grep --color=always -E "Step|Successfully|Building|done|wordpress_container|0.0.0.0|ready for connections"
DEBUG = cd srcs && docker-compose up --build -d

all:
	@$(FILTER)
debug:
	@$(DEBUG)
