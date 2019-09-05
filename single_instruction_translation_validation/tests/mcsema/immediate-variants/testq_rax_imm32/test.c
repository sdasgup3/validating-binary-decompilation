void leaf() {
  __asm__("testq $0x77, %rax");
  }

void main() {
  leaf();
}