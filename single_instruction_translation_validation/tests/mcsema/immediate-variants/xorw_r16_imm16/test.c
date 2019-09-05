void leaf() {
  __asm__("xorw $0x77, %bx");
  }

void main() {
  leaf();
}