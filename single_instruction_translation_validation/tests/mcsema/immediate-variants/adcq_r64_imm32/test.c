void leaf() {
  __asm__("adcq $0x77, %rbx");
  }

void main() {
  leaf();
}