void leaf() {
  __asm__("andb $0x77, %al");
  }

void main() {
  leaf();
}