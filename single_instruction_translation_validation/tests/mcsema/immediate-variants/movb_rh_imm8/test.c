void leaf() {
  __asm__("movb $0x77, %ah");
  }

void main() {
  leaf();
}