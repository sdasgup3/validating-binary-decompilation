void leaf() {
  __asm__("orw $0x77, %bx");
  }

void main() {
  leaf();
}