void leaf() {
  __asm__("movnti %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}