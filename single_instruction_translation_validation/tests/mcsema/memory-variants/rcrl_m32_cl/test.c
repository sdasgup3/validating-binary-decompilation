void leaf() {
  __asm__("rcrl %cl, -4(%rbp)");
  }

void main() {
  leaf();
}