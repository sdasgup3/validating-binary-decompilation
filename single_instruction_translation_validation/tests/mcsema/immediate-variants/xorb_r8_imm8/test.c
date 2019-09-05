void leaf() {
  __asm__("xorb $0x77, %bl");
  }

void main() {
  leaf();
}