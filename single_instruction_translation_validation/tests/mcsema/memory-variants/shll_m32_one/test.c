void leaf() {
  __asm__("shll $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}