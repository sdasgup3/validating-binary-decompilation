void leaf() {
  __asm__("orw $0x77, %ax");
  }

void main() {
  leaf();
}