void leaf() {
  __asm__("shrb $0x77, %ah");
  }

void main() {
  leaf();
}