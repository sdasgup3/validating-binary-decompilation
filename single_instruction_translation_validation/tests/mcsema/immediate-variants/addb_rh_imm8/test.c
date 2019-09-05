void leaf() {
  __asm__("addb $0x77, %ah");
  }

void main() {
  leaf();
}