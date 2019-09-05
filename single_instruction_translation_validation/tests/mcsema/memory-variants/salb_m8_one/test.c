void leaf() {
  __asm__("salb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}