void leaf() {
  __asm__("salw $0x1, %bx");
  }

void main() {
  leaf();
}