void leaf() {
  __asm__("orb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}