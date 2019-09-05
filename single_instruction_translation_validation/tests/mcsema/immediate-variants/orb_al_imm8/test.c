void leaf() {
  __asm__("orb $0x77, %al");
  }

void main() {
  leaf();
}