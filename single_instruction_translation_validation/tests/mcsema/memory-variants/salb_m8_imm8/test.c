void leaf() {
  __asm__("salb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}