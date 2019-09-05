void leaf() {
  __asm__("movnti %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}