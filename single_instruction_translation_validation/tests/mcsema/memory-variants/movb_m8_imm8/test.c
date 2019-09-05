void leaf() {
  __asm__("movb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}