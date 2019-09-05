void leaf() {
  __asm__("sbbq $0x77, %rax");
  }

void main() {
  leaf();
}