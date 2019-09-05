void leaf() {
  __asm__("sbbq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}