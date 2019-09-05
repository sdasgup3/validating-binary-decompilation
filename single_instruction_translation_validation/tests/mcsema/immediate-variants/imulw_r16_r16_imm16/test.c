void leaf() {
  __asm__("imulw $0x77, %cx, %bx");
  }

void main() {
  leaf();
}