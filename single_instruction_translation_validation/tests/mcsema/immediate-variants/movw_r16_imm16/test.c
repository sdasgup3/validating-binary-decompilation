void leaf() {
  __asm__("movw $0x77, %bx");
  }

void main() {
  leaf();
}