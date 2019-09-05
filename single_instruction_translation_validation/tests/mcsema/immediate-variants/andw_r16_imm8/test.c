void leaf() {
  __asm__("andw $0x77, %bx");
  }

void main() {
  leaf();
}