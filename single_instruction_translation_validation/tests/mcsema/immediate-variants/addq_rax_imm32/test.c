void leaf() {
  __asm__("addq $0x77, %rax");
  }

void main() {
  leaf();
}