void leaf() {
  __asm__("addb $0x77, %al");
  }

void main() {
  leaf();
}