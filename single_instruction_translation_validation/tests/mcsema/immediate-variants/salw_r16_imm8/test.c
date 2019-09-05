void leaf() {
  __asm__("salw $0x77, %bx");
  }

void main() {
  leaf();
}