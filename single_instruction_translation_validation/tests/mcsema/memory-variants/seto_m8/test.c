void leaf() {
  __asm__("seto -4(%rbp)");
  }

void main() {
  leaf();
}