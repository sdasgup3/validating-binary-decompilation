void leaf() {
  __asm__("adcq $0x77, %rax");
  }

void main() {
  leaf();
}