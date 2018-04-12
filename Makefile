ASSEMBLER=./asm
COREWAR_VM=./corewar

ASSEMBLER_FILE=./assembler/asm
COREWAR_FILE=./corewar_vm/corewar

all: $(ASSEMBLER) $(COREWAR_VM)

$(ASSEMBLER): $(ASSEMBLER_FILE)
	@cp ./assembler/asm ./asm

$(COREWAR_VM): $(COREWAR_FILE)
	@cp ./corewar_vm/corewar ./corewar

$(ASSEMBLER_FILE):
	@make -C assembler

$(COREWAR_FILE):
	@make -C corewar_vm

clean:
	@make -C assembler clean
	@make -C corewar_vm clean

fclean: clean
	@rm -f asm
	@rm -f corewar
	@rm -f ./assembler/asm
	@rm -f ./corewar_vm/corewar
	@rm -f ./assembler/libft/libft.a
	@rm -f ./corewar_vm/libft/libft.a
	@echo "\033[1;33m<corewar>		| removed\033[0m"
	@echo "\033[1;33m<asm>			| removed\033[0m"

re: fclean all
