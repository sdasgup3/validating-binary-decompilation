void leaf() {
  __asm__("xorb $0x77, %al");
  }

void main() {
  leaf();
}