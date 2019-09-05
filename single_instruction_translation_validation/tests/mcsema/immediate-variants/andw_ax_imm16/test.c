void leaf() {
  __asm__("andw $0x77, %ax");
  }

void main() {
  leaf();
}