void leaf() {
  __asm__("rorw $0x1, %bx");
  }

void main() {
  leaf();
}