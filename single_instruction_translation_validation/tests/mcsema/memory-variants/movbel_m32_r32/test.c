void leaf() {
  __asm__("movbel %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}