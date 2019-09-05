void leaf() {
  __asm__("xorb $0x77, %ah");
  }

void main() {
  leaf();
}