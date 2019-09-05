void leaf() {
  __asm__("andq $0x77, %rax");
  }

void main() {
  leaf();
}