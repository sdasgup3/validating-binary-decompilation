void leaf() {
  __asm__("btw $0x77, %bx");
  }

void main() {
  leaf();
}