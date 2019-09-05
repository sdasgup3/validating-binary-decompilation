void leaf() {
  __asm__("cmpw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}