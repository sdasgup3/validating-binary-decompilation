void leaf() {
  __asm__("btsw $0x77, %bx");
  }

void main() {
  leaf();
}