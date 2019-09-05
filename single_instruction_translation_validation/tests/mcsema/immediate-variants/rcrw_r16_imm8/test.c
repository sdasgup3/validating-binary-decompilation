void leaf() {
  __asm__("rcrw $0x77, %bx");
  }

void main() {
  leaf();
}