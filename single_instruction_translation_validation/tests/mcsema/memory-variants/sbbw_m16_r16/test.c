void leaf() {
  __asm__("sbbw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}