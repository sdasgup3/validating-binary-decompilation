void leaf() {
  __asm__("rolb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}