void leaf() {
  __asm__("rolw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}