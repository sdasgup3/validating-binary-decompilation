void leaf() {
  __asm__("subb $0x77, %al");
  }

void main() {
  leaf();
}