void leaf() {
  __asm__("shrb $0x1, %ah");
  }

void main() {
  leaf();
}