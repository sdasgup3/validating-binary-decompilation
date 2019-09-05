void leaf() {
  __asm__("shlw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}