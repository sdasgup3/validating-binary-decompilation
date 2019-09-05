void leaf() {
  __asm__("rcrw $0x1, %bx");
  }

void main() {
  leaf();
}