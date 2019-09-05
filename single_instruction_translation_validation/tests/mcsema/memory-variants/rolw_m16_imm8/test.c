void leaf() {
  __asm__("rolw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}