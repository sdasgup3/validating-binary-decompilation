void leaf() {
  __asm__("rolb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}