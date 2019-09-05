void leaf() {
  __asm__("cmpb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}