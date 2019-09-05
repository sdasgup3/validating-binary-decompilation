void leaf() {
  __asm__("shlw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}