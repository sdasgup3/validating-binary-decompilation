void leaf() {
  __asm__("shlw $0x1, %bx");
  }

void main() {
  leaf();
}