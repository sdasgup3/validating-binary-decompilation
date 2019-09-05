void leaf() {
  __asm__("subq $0x77, %rax");
  }

void main() {
  leaf();
}