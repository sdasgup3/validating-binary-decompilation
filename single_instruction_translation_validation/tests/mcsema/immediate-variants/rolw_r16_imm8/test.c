void leaf() {
  __asm__("rolw $0x77, %bx");
  }

void main() {
  leaf();
}