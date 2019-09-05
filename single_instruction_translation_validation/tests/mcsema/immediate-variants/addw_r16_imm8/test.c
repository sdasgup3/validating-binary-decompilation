void leaf() {
  __asm__("addw $0x77, %bx");
  }

void main() {
  leaf();
}