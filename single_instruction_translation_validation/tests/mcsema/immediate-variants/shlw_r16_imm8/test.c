void leaf() {
  __asm__("shlw $0x77, %bx");
  }

void main() {
  leaf();
}