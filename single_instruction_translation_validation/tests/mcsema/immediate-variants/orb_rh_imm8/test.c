void leaf() {
  __asm__("orb $0x77, %ah");
  }

void main() {
  leaf();
}