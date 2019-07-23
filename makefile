# Declare variables
readme = README.md
DATE_TIME = $(shell date +%F%t%T)

# Set Phony targets to avoid conflicts
.PHONY: all clean

# Build
all: $(readme)

# $^: List of non-duplicate pre-requisites
$(readme): guessinggame.sh
	@echo "Project Title: Guessing Game" > $(readme)
	@echo "Date-Time: " $(DATE_TIME) >> $(readme)
	@echo "Lines of code: " $(shell wc -l $^ | egrep -o "[0-9]+") >> $(readme)

# Clean
clean:
	rm -rf $(readme)
