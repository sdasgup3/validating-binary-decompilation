void leaf() {
  __asm__("testw $0x77, %bx");
  }

void main() {
  leaf();
}