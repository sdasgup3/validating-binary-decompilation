void leaf() {
  __asm__("shll $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}