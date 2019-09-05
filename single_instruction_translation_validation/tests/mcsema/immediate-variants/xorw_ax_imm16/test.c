void leaf() {
  __asm__("xorw $0x77, %ax");
  }

void main() {
  leaf();
}