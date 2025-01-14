# Nome do executável
TARGET = build/meu_jogo

# Compilador e flags
CC = gcc
CFLAGS = -Wall -g -Iinclude  # Inclui a pasta de cabeçalhos

# Diretórios dos arquivos-fonte e diretório de build
SRC_DIR = src
BUILD_DIR = build

# Arquivos-fonte do jogo e da CLI-lib
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)

# Alvo padrão que força a recompilação
all: $(TARGET)

# Garante que o diretório build existe
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Regra de compilação
$(TARGET): $(BUILD_DIR) $(SRC_FILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC_FILES)

# Comando de execução
run: all
	./$(TARGET)

# Limpeza dos arquivos compilados
clean:
	rm -rf $(BUILD_DIR)
