void leaf() {
  __asm__("rorw $0x77, %bx");
  }

void main() {
  leaf();
}