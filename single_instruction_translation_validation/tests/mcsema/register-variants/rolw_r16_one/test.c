void leaf() {
  __asm__("rolw $0x1, %bx");
  }

void main() {
  leaf();
}