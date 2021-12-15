APP_NAME:=create-cmake-app

SRC_DIR:=src
BIN_DIR:=bin

$(APP_NAME): dir
	gcc -Wall -o $(BIN_DIR)/$(APP_NAME) $(SRC_DIR)/$(APP_NAME).c

run: bin
	./$(APP_NAME)

install:
	echo "Installing..."

uninstall:
	echo "Uninstalling..."

dir:
	mkdir -p $(BIN_DIR)

clean:
	rm -rf .DS_Store $(BIN_DIR)
