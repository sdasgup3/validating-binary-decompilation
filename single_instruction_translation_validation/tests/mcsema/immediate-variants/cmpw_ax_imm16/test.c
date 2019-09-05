void leaf() {
  __asm__("cmpw $0x77, %ax");
  }

void main() {
  leaf();
}