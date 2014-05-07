CS_FLAGS=--vapidir . --pkg capstone -g
CS_X86_FLAGS=-D CS_X86 --pkg capstone.x86 ${CS_FLAGS}
CS_ARM_FLAGS=-D CS_ARM --pkg capstone.arm ${CS_FLAGS}
CS_MIPS_FLAGS=-D CS_MIPS --pkg capstone.mips ${CS_FLAGS}
CS_PPC_FLAGS=-D CS_PPC --pkg capstone.ppc ${CS_FLAGS}

all: doc
	valac $(CS_X86_FLAGS)  test-x86.vala 
	valac $(CS_ARM_FLAGS)  test-arm.vala
	valac $(CS_MIPS_FLAGS) test-mips.vala
	valac $(CS_PPC_FLAGS)  test-ppc.vala 

CSD=node cs-dump-enums.js
ARCHS=arm arm64 x86 ppc mips
.PHONY: all clean enums doc
enums: capstone-next
	@rm -rf enums
	@mkdir -p enums
	@for a in $(ARCHS) ; do \
		for b in `$(CSD) $$a 2> enums/CSVERSION | grep // |awk '{print $$2}'` ; do \
			f="enums/$$a.$$b"; \
			printf "[ ] $$f ..." ; \
			$(CSD) $$a $$b 2> /dev/null > $$f ; \
			printf "\r[x] $$f    \n" ; \
		done ; \
	done

capstone-next:
	git clone https://github.com/aquynh/capstone/ capstone-next
	cd capstone-next ; git co next

clean:
	rm -rf enums capstone
	rm -f test-arm test-mips test-x86 test-ppc
	rm -rf *.o *.dSYM *.c

doc:
	valadoc -o capstone *.vapi
