void leaf() {
  __asm__("sbbl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}