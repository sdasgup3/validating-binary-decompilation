void leaf() {
  __asm__("cmpq $0x77, %rax");
  }

void main() {
  leaf();
}